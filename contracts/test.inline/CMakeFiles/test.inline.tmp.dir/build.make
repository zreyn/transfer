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
include contracts/test.inline/CMakeFiles/test.inline.tmp.dir/depend.make

# Include the progress variables for this target.
include contracts/test.inline/CMakeFiles/test.inline.tmp.dir/progress.make

# Include the compile flags for this target's objects.
include contracts/test.inline/CMakeFiles/test.inline.tmp.dir/flags.make

contracts/test.inline/CMakeFiles/test.inline.tmp.dir/test.inline.cpp.o: contracts/test.inline/CMakeFiles/test.inline.tmp.dir/flags.make
contracts/test.inline/CMakeFiles/test.inline.tmp.dir/test.inline.cpp.o: ../contracts/test.inline/test.inline.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contracts/test.inline/CMakeFiles/test.inline.tmp.dir/test.inline.cpp.o"
	cd /Users/zanereynolds/workspace/eos/build/contracts/test.inline && /usr/local/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.inline.tmp.dir/test.inline.cpp.o -c /Users/zanereynolds/workspace/eos/contracts/test.inline/test.inline.cpp

contracts/test.inline/CMakeFiles/test.inline.tmp.dir/test.inline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.inline.tmp.dir/test.inline.cpp.i"
	cd /Users/zanereynolds/workspace/eos/build/contracts/test.inline && /usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zanereynolds/workspace/eos/contracts/test.inline/test.inline.cpp > CMakeFiles/test.inline.tmp.dir/test.inline.cpp.i

contracts/test.inline/CMakeFiles/test.inline.tmp.dir/test.inline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.inline.tmp.dir/test.inline.cpp.s"
	cd /Users/zanereynolds/workspace/eos/build/contracts/test.inline && /usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zanereynolds/workspace/eos/contracts/test.inline/test.inline.cpp -o CMakeFiles/test.inline.tmp.dir/test.inline.cpp.s

# Object files for target test.inline.tmp
test_inline_tmp_OBJECTS = \
"CMakeFiles/test.inline.tmp.dir/test.inline.cpp.o"

# External object files for target test.inline.tmp
test_inline_tmp_EXTERNAL_OBJECTS =

contracts/test.inline/test.inline.tmp: contracts/test.inline/CMakeFiles/test.inline.tmp.dir/test.inline.cpp.o
contracts/test.inline/test.inline.tmp: contracts/test.inline/CMakeFiles/test.inline.tmp.dir/build.make
contracts/test.inline/test.inline.tmp: contracts/test.inline/CMakeFiles/test.inline.tmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test.inline.tmp"
	cd /Users/zanereynolds/workspace/eos/build/contracts/test.inline && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.inline.tmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contracts/test.inline/CMakeFiles/test.inline.tmp.dir/build: contracts/test.inline/test.inline.tmp

.PHONY : contracts/test.inline/CMakeFiles/test.inline.tmp.dir/build

contracts/test.inline/CMakeFiles/test.inline.tmp.dir/clean:
	cd /Users/zanereynolds/workspace/eos/build/contracts/test.inline && $(CMAKE_COMMAND) -P CMakeFiles/test.inline.tmp.dir/cmake_clean.cmake
.PHONY : contracts/test.inline/CMakeFiles/test.inline.tmp.dir/clean

contracts/test.inline/CMakeFiles/test.inline.tmp.dir/depend:
	cd /Users/zanereynolds/workspace/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zanereynolds/workspace/eos /Users/zanereynolds/workspace/eos/contracts/test.inline /Users/zanereynolds/workspace/eos/build /Users/zanereynolds/workspace/eos/build/contracts/test.inline /Users/zanereynolds/workspace/eos/build/contracts/test.inline/CMakeFiles/test.inline.tmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/test.inline/CMakeFiles/test.inline.tmp.dir/depend

