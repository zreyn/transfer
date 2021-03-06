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

# Utility rule file for noop.

# Include the progress variables for this target.
include contracts/noop/CMakeFiles/noop.dir/progress.make

contracts/noop/CMakeFiles/noop: contracts/noop/noop.wast.hpp
contracts/noop/CMakeFiles/noop: contracts/noop/noop.abi.hpp
contracts/noop/CMakeFiles/noop: contracts/noop/noop.wasm


contracts/noop/noop.wast.hpp: contracts/noop/noop.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating noop.wast.hpp"
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && echo "const char* const noop_wast = R\"=====(" > /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.wast.hpp
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && cat /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.wast >> /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.wast.hpp
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && echo ")=====\";" >> /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.wast.hpp

contracts/noop/noop.abi.hpp: contracts/noop/noop.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating noop.abi.hpp"
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && echo "const char* const noop_abi = R\"=====(" > /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.abi.hpp
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && cat /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.abi >> /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.abi.hpp
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && echo ")=====\";" >> /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.abi.hpp

contracts/noop/noop.wasm: contracts/noop/noop.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM noop.wasm"
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && /Users/zanereynolds/workspace/eos/build/libraries/wasm-jit/Source/Programs/eosio-wast2wasm /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.wast /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.wasm -n

contracts/noop/noop.wast: contracts/noop/noop.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST noop.wast"
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && /Users/zanereynolds/workspace/eos/build/externals/binaryen/bin/eosio-s2wasm -o /Users/zanereynolds/workspace/eos/build/contracts/noop/noop.wast -s 10240 noop.s

contracts/noop/noop.s: contracts/noop/noop.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly noop.s"
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && /usr/local/wasm/bin/llc -thread-model=single -asm-verbose=false -o noop.s noop.bc

contracts/noop/noop.bc: contracts/noop/noop.cpp.bc
contracts/noop/noop.bc: contracts/libc++/libc++.bc
contracts/noop/noop.bc: contracts/musl/libc.bc
contracts/noop/noop.bc: contracts/eosiolib/eosiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable noop.bc"
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && /usr/local/wasm/bin/llvm-link -only-needed -o noop.bc noop.cpp.bc /Users/zanereynolds/workspace/eos/build/contracts/libc++/libc++.bc /Users/zanereynolds/workspace/eos/build/contracts/musl/libc.bc /Users/zanereynolds/workspace/eos/build/contracts/eosiolib/eosiolib.bc

contracts/noop/noop.cpp.bc: ../contracts/noop/noop.cpp
contracts/noop/noop.cpp.bc: ../contracts/noop/noop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode noop.cpp.bc"
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && /usr/local/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /Users/zanereynolds/workspace/eos/contracts/noop/noop.cpp -o noop.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /Users/zanereynolds/workspace/eos/contracts -I /Users/zanereynolds/workspace/eos/build/contracts -I /Users/zanereynolds/workspace/eos/externals/magic_get/include -isystem /Users/zanereynolds/workspace/eos/contracts/libc++/upstream/include -isystem /Users/zanereynolds/workspace/eos/contracts/musl/upstream/include -isystem /usr/local/include

noop: contracts/noop/CMakeFiles/noop
noop: contracts/noop/noop.wast.hpp
noop: contracts/noop/noop.abi.hpp
noop: contracts/noop/noop.wasm
noop: contracts/noop/noop.wast
noop: contracts/noop/noop.s
noop: contracts/noop/noop.bc
noop: contracts/noop/noop.cpp.bc
noop: contracts/noop/CMakeFiles/noop.dir/build.make

.PHONY : noop

# Rule to build all files generated by this target.
contracts/noop/CMakeFiles/noop.dir/build: noop

.PHONY : contracts/noop/CMakeFiles/noop.dir/build

contracts/noop/CMakeFiles/noop.dir/clean:
	cd /Users/zanereynolds/workspace/eos/build/contracts/noop && $(CMAKE_COMMAND) -P CMakeFiles/noop.dir/cmake_clean.cmake
.PHONY : contracts/noop/CMakeFiles/noop.dir/clean

contracts/noop/CMakeFiles/noop.dir/depend:
	cd /Users/zanereynolds/workspace/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zanereynolds/workspace/eos /Users/zanereynolds/workspace/eos/contracts/noop /Users/zanereynolds/workspace/eos/build /Users/zanereynolds/workspace/eos/build/contracts/noop /Users/zanereynolds/workspace/eos/build/contracts/noop/CMakeFiles/noop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/noop/CMakeFiles/noop.dir/depend

