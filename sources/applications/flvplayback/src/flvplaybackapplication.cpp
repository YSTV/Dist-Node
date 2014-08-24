/* 
 *  Copyright (c) 2010,
 *  Gavriloaie Eugen-Andrei (shiretu@gmail.com)
 *
 *  This file is part of crtmpserver.
 *  crtmpserver is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  crtmpserver is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with crtmpserver.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "flvplaybackapplication.h"
#include "protocols/protocoltypes.h"
#include "protocols/rtmp/basertmpprotocol.h"
#include "rtmpappprotocolhandler.h"
#include "liveflvappprotocolhandler.h"
#include "tsappprotocolhandler.h"
#include "rtpappprotocolhandler.h"
#include "rtspappprotocolhandler.h"
#include "netio/netio.h"
#include "application/clientapplicationmanager.h"
#include "mmsappprotocolhandler.h"
#include "rawhttpstreamappprotocolhandler.h"
#include "httpappprotocolhandler.h"
#include "streaming/streamstypes.h"
using namespace app_flvplayback;

FLVPlaybackApplication::RestartStreamTimer::RestartStreamTimer(FLVPlaybackApplication *pApplication) {
	_pApplication = pApplication;
}

FLVPlaybackApplication::RestartStreamTimer::~RestartStreamTimer() {
}

void FLVPlaybackApplication::RestartStreamTimer::RestartStream(Variant& streamConfig) {
	_streams.push_back(streamConfig);
}

bool FLVPlaybackApplication::RestartStreamTimer::TimePeriodElapsed() {
	vector<Variant>::iterator iter;
	for(iter = _streams.begin(); iter != _streams.end(); iter++) {
		INFO("Restarting stream with streamConfig: %s", iter->ToString().c_str());
		_pApplication->PullExternalStream(*iter);
	}
	_streams.clear();
	return true;
}

FLVPlaybackApplication::FLVPlaybackApplication(Variant &configuration)
: BaseClientApplication(configuration) {
#ifdef HAS_PROTOCOL_RTMP
	_pRTMPHandler = NULL;
#endif /* HAS_PROTOCOL_RTMP */
#ifdef HAS_PROTOCOL_LIVEFLV
	_pLiveFLVHandler = NULL;
#endif /* HAS_PROTOCOL_LIVEFLV */
#ifdef HAS_PROTOCOL_TS
	_pTSHandler = NULL;
#endif /* HAS_PROTOCOL_TS */
#ifdef HAS_PROTOCOL_RTP
	_pRTPHandler = NULL;
	_pRTSPHandler = NULL;
#endif /* HAS_PROTOCOL_RTP */
	_pTimer = NULL;
#ifdef HAS_PROTOCOL_MMS
	_pMMSHandler = NULL;
#endif /* HAS_PROTOCOL_MMS */
#ifdef HAS_PROTOCOL_RAWHTTPSTREAM
	_pRawHTTPStreamHandler = NULL;
#endif /* HAS_PROTOCOL_RAWHTTPSTREAM */
#ifdef HAS_PROTOCOL_HTTP
	_pHTTPHandler = NULL;
#endif /* HAS_PROTOCOL_HTTP */
}

FLVPlaybackApplication::~FLVPlaybackApplication() {
/*	if(_pTimer) {
		_pTimer->EnqueueForDelete();
		_pTimer = NULL;
	}*/
#ifdef HAS_PROTOCOL_RTMP
	UnRegisterAppProtocolHandler(PT_INBOUND_RTMP);
	UnRegisterAppProtocolHandler(PT_OUTBOUND_RTMP);
	if (_pRTMPHandler != NULL) {
		delete _pRTMPHandler;
		_pRTMPHandler = NULL;
	}
#endif /* HAS_PROTOCOL_RTMP */
#ifdef HAS_PROTOCOL_LIVEFLV
	UnRegisterAppProtocolHandler(PT_INBOUND_LIVE_FLV);
	if (_pLiveFLVHandler != NULL) {
		delete _pLiveFLVHandler;
		_pLiveFLVHandler = NULL;
	}
#endif /* HAS_PROTOCOL_LIVEFLV */

#ifdef HAS_PROTOCOL_TS
	UnRegisterAppProtocolHandler(PT_INBOUND_TS);
	if (_pTSHandler != NULL) {
		delete _pTSHandler;
		_pTSHandler = NULL;
	}
#endif /* HAS_PROTOCOL_TS */

#ifdef HAS_PROTOCOL_RTP
	UnRegisterAppProtocolHandler(PT_INBOUND_RTP);
	if (_pRTPHandler != NULL) {
		delete _pRTPHandler;
		_pRTPHandler = NULL;
	}

	UnRegisterAppProtocolHandler(PT_RTSP);
	if (_pRTSPHandler != NULL) {
		delete _pRTSPHandler;
		_pRTSPHandler = NULL;
	}
#endif /* HAS_PROTOCOL_RTP */
#ifdef HAS_PROTOCOL_MMS
	UnRegisterAppProtocolHandler(PT_OUTBOUND_MMS);
	if (_pMMSHandler != NULL) {
		delete _pMMSHandler;
		_pMMSHandler = NULL;
	}
#endif /* HAS_PROTOCOL_MMS */
#ifdef HAS_PROTOCOL_RAWHTTPSTREAM
	UnRegisterAppProtocolHandler(PT_INBOUND_RAW_HTTP_STREAM);
	if (_pRawHTTPStreamHandler != NULL) {
		delete _pRawHTTPStreamHandler;
		_pRawHTTPStreamHandler = NULL;
	}
#endif /* HAS_PROTOCOL_RAWHTTPSTREAM */
#ifdef HAS_PROTOCOL_HTTP
	UnRegisterAppProtocolHandler(PT_INBOUND_HTTP);
	UnRegisterAppProtocolHandler(PT_OUTBOUND_HTTP);
	if (_pHTTPHandler != NULL) {
		delete _pHTTPHandler;
		_pHTTPHandler = NULL;
	}
#endif /* HAS_PROTOCOL_HTTP */
}

void FLVPlaybackApplication::SignalStreamUnRegistered(BaseStream *pStream) {
	if(!TAG_KIND_OF(pStream->GetType(), ST_IN_NET))
		return;

	INFO("Stream %u of type %s with name `%s` unregistered from application `%s`",
		pStream->GetUniqueId(),
		STR(tagToString(pStream->GetType())),
		STR(pStream->GetName()),
		STR(GetName()));

	FOR_MAP(_configuration["externalStreams"], string, Variant, i) {
		Variant &streamConfig = MAP_VAL(i);
		if (streamConfig != V_MAP) {
			WARN("External stream configuration is invalid:\n%s",
			STR(streamConfig.ToString()));
			continue;
		}
		if (streamConfig["localStreamName"] == pStream->GetName()) {
			_pTimer->RestartStream(streamConfig);
			break;
		}
	}
}

bool FLVPlaybackApplication::OutboundConnectionFailed(Variant &customParameters) {
	INFO("OutboundConnectionFailed, customParameters: %s", customParameters.ToString().c_str());
	string streamName = customParameters["customParameters"]["externalStreamConfig"]["localStreamName"];
	FOR_MAP(_configuration["externalStreams"], string, Variant, i) {
		Variant &streamConfig = MAP_VAL(i);
		if (streamConfig != V_MAP) {
			WARN("External stream configuration is invalid:\n%s",
			STR(streamConfig.ToString()));
			continue;
		}
		if (streamConfig["localStreamName"] == streamName) {
			_pTimer->RestartStream(streamConfig);
			break;
		}
	}

	return false;
}

bool FLVPlaybackApplication::Initialize() {
	if (!BaseClientApplication::Initialize()) {
		FATAL("Unable to initialize application");
		return false;
	}
#ifdef HAS_PROTOCOL_RTMP
	_pRTMPHandler = new RTMPAppProtocolHandler(_configuration);
	RegisterAppProtocolHandler(PT_INBOUND_RTMP, _pRTMPHandler);
	RegisterAppProtocolHandler(PT_INBOUND_RTMPS_DISC, _pRTMPHandler);
	RegisterAppProtocolHandler(PT_OUTBOUND_RTMP, _pRTMPHandler);
#endif /* HAS_PROTOCOL_RTMP */
#ifdef HAS_PROTOCOL_LIVEFLV
	_pLiveFLVHandler = new LiveFLVAppProtocolHandler(_configuration);
	RegisterAppProtocolHandler(PT_INBOUND_LIVE_FLV, _pLiveFLVHandler);
#endif /* HAS_PROTOCOL_LIVEFLV */

#ifdef HAS_PROTOCOL_TS
	_pTSHandler = new TSAppProtocolHandler(_configuration);
	RegisterAppProtocolHandler(PT_INBOUND_TS, _pTSHandler);
#endif /* HAS_PROTOCOL_TS */

#ifdef HAS_PROTOCOL_RTP
	_pRTPHandler = new RTPAppProtocolHandler(_configuration);
	RegisterAppProtocolHandler(PT_INBOUND_RTP, _pRTPHandler);
	RegisterAppProtocolHandler(PT_RTCP, _pRTPHandler);

	_pRTSPHandler = new RTSPAppProtocolHandler(_configuration);
	RegisterAppProtocolHandler(PT_RTSP, _pRTSPHandler);
#endif /* HAS_PROTOCOL_RTP */
	_pTimer = new RestartStreamTimer(this);
	_pTimer->EnqueueForTimeEvent(5);
#ifdef HAS_PROTOCOL_MMS
	_pMMSHandler = new MMSAppProtocolHandler(_configuration);
	RegisterAppProtocolHandler(PT_OUTBOUND_MMS, _pMMSHandler);
#endif /* HAS_PROTOCOL_MMS */
#ifdef HAS_PROTOCOL_RAWHTTPSTREAM
	_pRawHTTPStreamHandler = new RawHTTPStreamAppProtocolHandler(_configuration);
	RegisterAppProtocolHandler(PT_INBOUND_RAW_HTTP_STREAM, _pRawHTTPStreamHandler);
#endif /* HAS_PROTOCOL_RAWHTTPSTREAM */
#ifdef HAS_PROTOCOL_HTTP
	_pHTTPHandler = new HTTPAppProtocolHandler(_configuration);
	RegisterAppProtocolHandler(PT_INBOUND_HTTP_FOR_RTMP, _pHTTPHandler);
	RegisterAppProtocolHandler(PT_OUTBOUND_HTTP_FOR_RTMP, _pHTTPHandler);
#endif /* HAS_PROTOCOL_HTTP */

	return PullExternalStreams();
}
