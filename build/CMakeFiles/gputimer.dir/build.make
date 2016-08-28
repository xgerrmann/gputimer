# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/xgerrmann/Documents/src/gputimer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xgerrmann/Documents/src/gputimer/build

# Include any dependencies generated for this target.
include CMakeFiles/gputimer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gputimer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gputimer.dir/flags.make

CMakeFiles/gputimer_test.dir/gputimer_test_generated_gputimer.cu.o: CMakeFiles/gputimer_test.dir/gputimer_test_generated_gputimer.cu.o.depend
CMakeFiles/gputimer_test.dir/gputimer_test_generated_gputimer.cu.o: CMakeFiles/gputimer_test.dir/gputimer_test_generated_gputimer.cu.o.cmake
CMakeFiles/gputimer_test.dir/gputimer_test_generated_gputimer.cu.o: ../gputimer.cu
	$(CMAKE_COMMAND) -E cmake_progress_report /home/xgerrmann/Documents/src/gputimer/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building NVCC (Device) object CMakeFiles/gputimer_test.dir/gputimer_test_generated_gputimer.cu.o"
	cd /home/xgerrmann/Documents/src/gputimer/build/CMakeFiles/gputimer_test.dir && /usr/bin/cmake -E make_directory /home/xgerrmann/Documents/src/gputimer/build/CMakeFiles/gputimer_test.dir/./.
	cd /home/xgerrmann/Documents/src/gputimer/build/CMakeFiles/gputimer_test.dir && /usr/bin/cmake -D verbose:BOOL=$(VERBOSE) -D build_configuration:STRING= -D generated_file:STRING=/home/xgerrmann/Documents/src/gputimer/build/CMakeFiles/gputimer_test.dir/././gputimer_test_generated_gputimer.cu.o -D generated_cubin_file:STRING=/home/xgerrmann/Documents/src/gputimer/build/CMakeFiles/gputimer_test.dir/././gputimer_test_generated_gputimer.cu.o.cubin.txt -P /home/xgerrmann/Documents/src/gputimer/build/CMakeFiles/gputimer_test.dir/./gputimer_test_generated_gputimer.cu.o.cmake

CMakeFiles/gputimer.dir/gputimer_test.cpp.o: CMakeFiles/gputimer.dir/flags.make
CMakeFiles/gputimer.dir/gputimer_test.cpp.o: ../gputimer_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/xgerrmann/Documents/src/gputimer/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/gputimer.dir/gputimer_test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gputimer.dir/gputimer_test.cpp.o -c /home/xgerrmann/Documents/src/gputimer/gputimer_test.cpp

CMakeFiles/gputimer.dir/gputimer_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gputimer.dir/gputimer_test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/xgerrmann/Documents/src/gputimer/gputimer_test.cpp > CMakeFiles/gputimer.dir/gputimer_test.cpp.i

CMakeFiles/gputimer.dir/gputimer_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gputimer.dir/gputimer_test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/xgerrmann/Documents/src/gputimer/gputimer_test.cpp -o CMakeFiles/gputimer.dir/gputimer_test.cpp.s

CMakeFiles/gputimer.dir/gputimer_test.cpp.o.requires:
.PHONY : CMakeFiles/gputimer.dir/gputimer_test.cpp.o.requires

CMakeFiles/gputimer.dir/gputimer_test.cpp.o.provides: CMakeFiles/gputimer.dir/gputimer_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/gputimer.dir/build.make CMakeFiles/gputimer.dir/gputimer_test.cpp.o.provides.build
.PHONY : CMakeFiles/gputimer.dir/gputimer_test.cpp.o.provides

CMakeFiles/gputimer.dir/gputimer_test.cpp.o.provides.build: CMakeFiles/gputimer.dir/gputimer_test.cpp.o

# Object files for target gputimer
gputimer_OBJECTS = \
"CMakeFiles/gputimer.dir/gputimer_test.cpp.o"

# External object files for target gputimer
gputimer_EXTERNAL_OBJECTS =

../lib/libgputimer.a: CMakeFiles/gputimer.dir/gputimer_test.cpp.o
../lib/libgputimer.a: CMakeFiles/gputimer.dir/build.make
../lib/libgputimer.a: CMakeFiles/gputimer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../lib/libgputimer.a"
	$(CMAKE_COMMAND) -P CMakeFiles/gputimer.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gputimer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gputimer.dir/build: ../lib/libgputimer.a
.PHONY : CMakeFiles/gputimer.dir/build

CMakeFiles/gputimer.dir/requires: CMakeFiles/gputimer.dir/gputimer_test.cpp.o.requires
.PHONY : CMakeFiles/gputimer.dir/requires

CMakeFiles/gputimer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gputimer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gputimer.dir/clean

CMakeFiles/gputimer.dir/depend: CMakeFiles/gputimer_test.dir/gputimer_test_generated_gputimer.cu.o
	cd /home/xgerrmann/Documents/src/gputimer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xgerrmann/Documents/src/gputimer /home/xgerrmann/Documents/src/gputimer /home/xgerrmann/Documents/src/gputimer/build /home/xgerrmann/Documents/src/gputimer/build /home/xgerrmann/Documents/src/gputimer/build/CMakeFiles/gputimer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gputimer.dir/depend

