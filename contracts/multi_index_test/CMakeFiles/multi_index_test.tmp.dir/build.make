# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zanereynolds/workspace/eos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zanereynolds/workspace/eos/build

# Include any dependencies generated for this target.
include contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/depend.make

# Include the progress variables for this target.
include contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/progress.make

# Include the compile flags for this target's objects.
include contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/flags.make

contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.o: contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/flags.make
contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.o: ../contracts/multi_index_test/multi_index_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.o"
	cd /Users/zanereynolds/workspace/eos/build/contracts/multi_index_test && /usr/local/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.o -c /Users/zanereynolds/workspace/eos/contracts/multi_index_test/multi_index_test.cpp

contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.i"
	cd /Users/zanereynolds/workspace/eos/build/contracts/multi_index_test && /usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zanereynolds/workspace/eos/contracts/multi_index_test/multi_index_test.cpp > CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.i

contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.s"
	cd /Users/zanereynolds/workspace/eos/build/contracts/multi_index_test && /usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zanereynolds/workspace/eos/contracts/multi_index_test/multi_index_test.cpp -o CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.s

# Object files for target multi_index_test.tmp
multi_index_test_tmp_OBJECTS = \
"CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.o"

# External object files for target multi_index_test.tmp
multi_index_test_tmp_EXTERNAL_OBJECTS =

contracts/multi_index_test/multi_index_test.tmp: contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/multi_index_test.cpp.o
contracts/multi_index_test/multi_index_test.tmp: contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/build.make
contracts/multi_index_test/multi_index_test.tmp: contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable multi_index_test.tmp"
	cd /Users/zanereynolds/workspace/eos/build/contracts/multi_index_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multi_index_test.tmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/build: contracts/multi_index_test/multi_index_test.tmp

.PHONY : contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/build

contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/clean:
	cd /Users/zanereynolds/workspace/eos/build/contracts/multi_index_test && $(CMAKE_COMMAND) -P CMakeFiles/multi_index_test.tmp.dir/cmake_clean.cmake
.PHONY : contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/clean

contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/depend:
	cd /Users/zanereynolds/workspace/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zanereynolds/workspace/eos /Users/zanereynolds/workspace/eos/contracts/multi_index_test /Users/zanereynolds/workspace/eos/build /Users/zanereynolds/workspace/eos/build/contracts/multi_index_test /Users/zanereynolds/workspace/eos/build/contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/multi_index_test/CMakeFiles/multi_index_test.tmp.dir/depend

