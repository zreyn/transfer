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

# Utility rule file for eosio.msig.

# Include the progress variables for this target.
include contracts/eosio.msig/CMakeFiles/eosio.msig.dir/progress.make

contracts/eosio.msig/CMakeFiles/eosio.msig: contracts/eosio.msig/eosio.msig.wast.hpp
contracts/eosio.msig/CMakeFiles/eosio.msig: contracts/eosio.msig/eosio.msig.abi.hpp
contracts/eosio.msig/CMakeFiles/eosio.msig: contracts/eosio.msig/eosio.msig.wasm


contracts/eosio.msig/eosio.msig.wast.hpp: contracts/eosio.msig/eosio.msig.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating eosio.msig.wast.hpp"
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && echo "const char* const eosio_msig_wast = R\"=====(" > /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.wast.hpp
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && cat /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.wast >> /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.wast.hpp
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && echo ")=====\";" >> /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.wast.hpp

contracts/eosio.msig/eosio.msig.abi.hpp: contracts/eosio.msig/eosio.msig.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating eosio.msig.abi.hpp"
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && echo "const char* const eosio_msig_abi = R\"=====(" > /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.abi.hpp
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && cat /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.abi >> /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.abi.hpp
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && echo ")=====\";" >> /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.abi.hpp

contracts/eosio.msig/eosio.msig.wasm: contracts/eosio.msig/eosio.msig.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM eosio.msig.wasm"
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && /Users/zanereynolds/workspace/eos/build/libraries/wasm-jit/Source/Programs/eosio-wast2wasm /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.wast /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.wasm -n

contracts/eosio.msig/eosio.msig.wast: contracts/eosio.msig/eosio.msig.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST eosio.msig.wast"
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && /Users/zanereynolds/workspace/eos/build/externals/binaryen/bin/eosio-s2wasm -o /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/eosio.msig.wast -s 10240 eosio.msig.s

contracts/eosio.msig/eosio.msig.s: contracts/eosio.msig/eosio.msig.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly eosio.msig.s"
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && /usr/local/wasm/bin/llc -thread-model=single -asm-verbose=false -o eosio.msig.s eosio.msig.bc

contracts/eosio.msig/eosio.msig.bc: contracts/eosio.msig/eosio.msig.cpp.bc
contracts/eosio.msig/eosio.msig.bc: contracts/libc++/libc++.bc
contracts/eosio.msig/eosio.msig.bc: contracts/musl/libc.bc
contracts/eosio.msig/eosio.msig.bc: contracts/eosiolib/eosiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable eosio.msig.bc"
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && /usr/local/wasm/bin/llvm-link -only-needed -o eosio.msig.bc eosio.msig.cpp.bc /Users/zanereynolds/workspace/eos/build/contracts/libc++/libc++.bc /Users/zanereynolds/workspace/eos/build/contracts/musl/libc.bc /Users/zanereynolds/workspace/eos/build/contracts/eosiolib/eosiolib.bc

contracts/eosio.msig/eosio.msig.cpp.bc: ../contracts/eosio.msig/eosio.msig.cpp
contracts/eosio.msig/eosio.msig.cpp.bc: ../contracts/eosio.msig/eosio.msig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/zanereynolds/workspace/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode eosio.msig.cpp.bc"
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && /usr/local/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /Users/zanereynolds/workspace/eos/contracts/eosio.msig/eosio.msig.cpp -o eosio.msig.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /Users/zanereynolds/workspace/eos/contracts -I /Users/zanereynolds/workspace/eos/build/contracts -I /Users/zanereynolds/workspace/eos/externals/magic_get/include -isystem /Users/zanereynolds/workspace/eos/contracts/libc++/upstream/include -isystem /Users/zanereynolds/workspace/eos/contracts/musl/upstream/include -isystem /usr/local/include

eosio.msig: contracts/eosio.msig/CMakeFiles/eosio.msig
eosio.msig: contracts/eosio.msig/eosio.msig.wast.hpp
eosio.msig: contracts/eosio.msig/eosio.msig.abi.hpp
eosio.msig: contracts/eosio.msig/eosio.msig.wasm
eosio.msig: contracts/eosio.msig/eosio.msig.wast
eosio.msig: contracts/eosio.msig/eosio.msig.s
eosio.msig: contracts/eosio.msig/eosio.msig.bc
eosio.msig: contracts/eosio.msig/eosio.msig.cpp.bc
eosio.msig: contracts/eosio.msig/CMakeFiles/eosio.msig.dir/build.make

.PHONY : eosio.msig

# Rule to build all files generated by this target.
contracts/eosio.msig/CMakeFiles/eosio.msig.dir/build: eosio.msig

.PHONY : contracts/eosio.msig/CMakeFiles/eosio.msig.dir/build

contracts/eosio.msig/CMakeFiles/eosio.msig.dir/clean:
	cd /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig && $(CMAKE_COMMAND) -P CMakeFiles/eosio.msig.dir/cmake_clean.cmake
.PHONY : contracts/eosio.msig/CMakeFiles/eosio.msig.dir/clean

contracts/eosio.msig/CMakeFiles/eosio.msig.dir/depend:
	cd /Users/zanereynolds/workspace/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zanereynolds/workspace/eos /Users/zanereynolds/workspace/eos/contracts/eosio.msig /Users/zanereynolds/workspace/eos/build /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig /Users/zanereynolds/workspace/eos/build/contracts/eosio.msig/CMakeFiles/eosio.msig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/eosio.msig/CMakeFiles/eosio.msig.dir/depend

