# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /opt/crtmpserver/builders/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/crtmpserver/builders/cmake

# Include any dependencies generated for this target.
include applications/stresstest/CMakeFiles/stresstest.dir/depend.make

# Include the progress variables for this target.
include applications/stresstest/CMakeFiles/stresstest.dir/progress.make

# Include the compile flags for this target's objects.
include applications/stresstest/CMakeFiles/stresstest.dir/flags.make

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o: applications/stresstest/CMakeFiles/stresstest.dir/flags.make
applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o: /opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /opt/crtmpserver/builders/cmake/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o"
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o -c /opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.i"
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp > CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.i

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.s"
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp -o CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.s

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o.requires:
.PHONY : applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o.requires

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o.provides: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o.requires
	$(MAKE) -f applications/stresstest/CMakeFiles/stresstest.dir/build.make applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o.provides.build
.PHONY : applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o.provides

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o.provides.build: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o: applications/stresstest/CMakeFiles/stresstest.dir/flags.make
applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o: /opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /opt/crtmpserver/builders/cmake/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o"
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o -c /opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.i"
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp > CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.i

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.s"
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp -o CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.s

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o.requires:
.PHONY : applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o.requires

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o.provides: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o.requires
	$(MAKE) -f applications/stresstest/CMakeFiles/stresstest.dir/build.make applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o.provides.build
.PHONY : applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o.provides

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o.provides.build: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o: applications/stresstest/CMakeFiles/stresstest.dir/flags.make
applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o: /opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /opt/crtmpserver/builders/cmake/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o"
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o -c /opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.i"
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp > CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.i

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.s"
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp -o CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.s

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o.requires:
.PHONY : applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o.requires

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o.provides: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o.requires
	$(MAKE) -f applications/stresstest/CMakeFiles/stresstest.dir/build.make applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o.provides.build
.PHONY : applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o.provides

applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o.provides.build: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o

# Object files for target stresstest
stresstest_OBJECTS = \
"CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o" \
"CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o" \
"CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o"

# External object files for target stresstest
stresstest_EXTERNAL_OBJECTS =

applications/stresstest/libstresstest.so: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o
applications/stresstest/libstresstest.so: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o
applications/stresstest/libstresstest.so: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o
applications/stresstest/libstresstest.so: applications/stresstest/CMakeFiles/stresstest.dir/build.make
applications/stresstest/libstresstest.so: thelib/libthelib.so
applications/stresstest/libstresstest.so: common/libcommon.so
applications/stresstest/libstresstest.so: lua/liblua.so
applications/stresstest/libstresstest.so: tinyxml/libtinyxml.so
applications/stresstest/libstresstest.so: /usr/lib/x86_64-linux-gnu/libssl.so
applications/stresstest/libstresstest.so: /usr/lib/x86_64-linux-gnu/libcrypto.so
applications/stresstest/libstresstest.so: applications/stresstest/CMakeFiles/stresstest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libstresstest.so"
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stresstest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
applications/stresstest/CMakeFiles/stresstest.dir/build: applications/stresstest/libstresstest.so
.PHONY : applications/stresstest/CMakeFiles/stresstest.dir/build

applications/stresstest/CMakeFiles/stresstest.dir/requires: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstestapplication.cpp.o.requires
applications/stresstest/CMakeFiles/stresstest.dir/requires: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/stresstest.cpp.o.requires
applications/stresstest/CMakeFiles/stresstest.dir/requires: applications/stresstest/CMakeFiles/stresstest.dir/opt/crtmpserver/sources/applications/stresstest/src/rtmpappprotocolhandler.cpp.o.requires
.PHONY : applications/stresstest/CMakeFiles/stresstest.dir/requires

applications/stresstest/CMakeFiles/stresstest.dir/clean:
	cd /opt/crtmpserver/builders/cmake/applications/stresstest && $(CMAKE_COMMAND) -P CMakeFiles/stresstest.dir/cmake_clean.cmake
.PHONY : applications/stresstest/CMakeFiles/stresstest.dir/clean

applications/stresstest/CMakeFiles/stresstest.dir/depend:
	cd /opt/crtmpserver/builders/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/crtmpserver/builders/cmake /opt/crtmpserver/builders/cmake/applications/stresstest /opt/crtmpserver/builders/cmake /opt/crtmpserver/builders/cmake/applications/stresstest /opt/crtmpserver/builders/cmake/applications/stresstest/CMakeFiles/stresstest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : applications/stresstest/CMakeFiles/stresstest.dir/depend

