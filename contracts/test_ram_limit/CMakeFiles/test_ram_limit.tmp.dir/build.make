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
include contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/depend.make

# Include the progress variables for this target.
include contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/progress.make

# Include the compile flags for this target's objects.
include contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/flags.make

contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.o: contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/flags.make
contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.o: ../contracts/test_ram_limit/test_ram_limit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.o"
	cd /Users/zanereynolds/workspace/eos/build/contracts/test_ram_limit && /usr/local/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.o -c /Users/zanereynolds/workspace/eos/contracts/test_ram_limit/test_ram_limit.cpp

contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.i"
	cd /Users/zanereynolds/workspace/eos/build/contracts/test_ram_limit && /usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zanereynolds/workspace/eos/contracts/test_ram_limit/test_ram_limit.cpp > CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.i

contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.s"
	cd /Users/zanereynolds/workspace/eos/build/contracts/test_ram_limit && /usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zanereynolds/workspace/eos/contracts/test_ram_limit/test_ram_limit.cpp -o CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.s

# Object files for target test_ram_limit.tmp
test_ram_limit_tmp_OBJECTS = \
"CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.o"

# External object files for target test_ram_limit.tmp
test_ram_limit_tmp_EXTERNAL_OBJECTS =

contracts/test_ram_limit/test_ram_limit.tmp: contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/test_ram_limit.cpp.o
contracts/test_ram_limit/test_ram_limit.tmp: contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/build.make
contracts/test_ram_limit/test_ram_limit.tmp: contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_ram_limit.tmp"
	cd /Users/zanereynolds/workspace/eos/build/contracts/test_ram_limit && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_ram_limit.tmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/build: contracts/test_ram_limit/test_ram_limit.tmp

.PHONY : contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/build

contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/clean:
	cd /Users/zanereynolds/workspace/eos/build/contracts/test_ram_limit && $(CMAKE_COMMAND) -P CMakeFiles/test_ram_limit.tmp.dir/cmake_clean.cmake
.PHONY : contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/clean

contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/depend:
	cd /Users/zanereynolds/workspace/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zanereynolds/workspace/eos /Users/zanereynolds/workspace/eos/contracts/test_ram_limit /Users/zanereynolds/workspace/eos/build /Users/zanereynolds/workspace/eos/build/contracts/test_ram_limit /Users/zanereynolds/workspace/eos/build/contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/test_ram_limit/CMakeFiles/test_ram_limit.tmp.dir/depend

