# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/project/Socket_echo/Tcp_server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/project/Socket_echo/Tcp_server/build

# Include any dependencies generated for this target.
include CMakeFiles/Tcp_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Tcp_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Tcp_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tcp_server.dir/flags.make

CMakeFiles/Tcp_server.dir/Tcp_server.cpp.o: CMakeFiles/Tcp_server.dir/flags.make
CMakeFiles/Tcp_server.dir/Tcp_server.cpp.o: ../Tcp_server.cpp
CMakeFiles/Tcp_server.dir/Tcp_server.cpp.o: CMakeFiles/Tcp_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/project/Socket_echo/Tcp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Tcp_server.dir/Tcp_server.cpp.o"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tcp_server.dir/Tcp_server.cpp.o -MF CMakeFiles/Tcp_server.dir/Tcp_server.cpp.o.d -o CMakeFiles/Tcp_server.dir/Tcp_server.cpp.o -c /home/ubuntu/project/Socket_echo/Tcp_server/Tcp_server.cpp

CMakeFiles/Tcp_server.dir/Tcp_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tcp_server.dir/Tcp_server.cpp.i"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/project/Socket_echo/Tcp_server/Tcp_server.cpp > CMakeFiles/Tcp_server.dir/Tcp_server.cpp.i

CMakeFiles/Tcp_server.dir/Tcp_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tcp_server.dir/Tcp_server.cpp.s"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/project/Socket_echo/Tcp_server/Tcp_server.cpp -o CMakeFiles/Tcp_server.dir/Tcp_server.cpp.s

# Object files for target Tcp_server
Tcp_server_OBJECTS = \
"CMakeFiles/Tcp_server.dir/Tcp_server.cpp.o"

# External object files for target Tcp_server
Tcp_server_EXTERNAL_OBJECTS =

Tcp_server: CMakeFiles/Tcp_server.dir/Tcp_server.cpp.o
Tcp_server: CMakeFiles/Tcp_server.dir/build.make
Tcp_server: CMakeFiles/Tcp_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/project/Socket_echo/Tcp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Tcp_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tcp_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Tcp_server.dir/build: Tcp_server
.PHONY : CMakeFiles/Tcp_server.dir/build

CMakeFiles/Tcp_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Tcp_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tcp_server.dir/clean

CMakeFiles/Tcp_server.dir/depend:
	cd /home/ubuntu/project/Socket_echo/Tcp_server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/project/Socket_echo/Tcp_server /home/ubuntu/project/Socket_echo/Tcp_server /home/ubuntu/project/Socket_echo/Tcp_server/build /home/ubuntu/project/Socket_echo/Tcp_server/build /home/ubuntu/project/Socket_echo/Tcp_server/build/CMakeFiles/Tcp_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Tcp_server.dir/depend
