# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /nix/store/c19pfwa36mw6xb30f2vi105nvs5956lv-cmake-3.21.2/bin/cmake

# The command to remove a file.
RM = /nix/store/c19pfwa36mw6xb30f2vi105nvs5956lv-cmake-3.21.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/runner/app/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/runner/app/build

# Include any dependencies generated for this target.
include test/CMakeFiles/DrogonSQL_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/DrogonSQL_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/DrogonSQL_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/DrogonSQL_test.dir/flags.make

test/CMakeFiles/DrogonSQL_test.dir/test_main.cc.o: test/CMakeFiles/DrogonSQL_test.dir/flags.make
test/CMakeFiles/DrogonSQL_test.dir/test_main.cc.o: /home/runner/app/server/test/test_main.cc
test/CMakeFiles/DrogonSQL_test.dir/test_main.cc.o: test/CMakeFiles/DrogonSQL_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/runner/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/DrogonSQL_test.dir/test_main.cc.o"
	cd /home/runner/app/build/test && /nix/store/lhyf1i2n3xljp01rr6rl27fg391zgg33-gcc-wrapper-11.2.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/DrogonSQL_test.dir/test_main.cc.o -MF CMakeFiles/DrogonSQL_test.dir/test_main.cc.o.d -o CMakeFiles/DrogonSQL_test.dir/test_main.cc.o -c /home/runner/app/server/test/test_main.cc

test/CMakeFiles/DrogonSQL_test.dir/test_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DrogonSQL_test.dir/test_main.cc.i"
	cd /home/runner/app/build/test && /nix/store/lhyf1i2n3xljp01rr6rl27fg391zgg33-gcc-wrapper-11.2.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/runner/app/server/test/test_main.cc > CMakeFiles/DrogonSQL_test.dir/test_main.cc.i

test/CMakeFiles/DrogonSQL_test.dir/test_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DrogonSQL_test.dir/test_main.cc.s"
	cd /home/runner/app/build/test && /nix/store/lhyf1i2n3xljp01rr6rl27fg391zgg33-gcc-wrapper-11.2.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/runner/app/server/test/test_main.cc -o CMakeFiles/DrogonSQL_test.dir/test_main.cc.s

# Object files for target DrogonSQL_test
DrogonSQL_test_OBJECTS = \
"CMakeFiles/DrogonSQL_test.dir/test_main.cc.o"

# External object files for target DrogonSQL_test
DrogonSQL_test_EXTERNAL_OBJECTS =

test/DrogonSQL_test: test/CMakeFiles/DrogonSQL_test.dir/test_main.cc.o
test/DrogonSQL_test: test/CMakeFiles/DrogonSQL_test.dir/build.make
test/DrogonSQL_test: /nix/store/1l9yql92jfyg9d0226bpl04m74hvgshd-drogon-1.7.4/lib/libdrogon.a
test/DrogonSQL_test: /nix/store/1l9yql92jfyg9d0226bpl04m74hvgshd-drogon-1.7.4/lib/libtrantor.a
test/DrogonSQL_test: /nix/store/28raxgh91r9rrkxfig6mg1halsxnw3x4-c-ares-1.17.2/lib/libcares.so
test/DrogonSQL_test: /nix/store/bf7jjd9jnkrrqngh26kc7r04s5zkgx6j-jsoncpp-1.9.4/lib/libjsoncpp.so
test/DrogonSQL_test: /nix/store/dfq92bnhvdr46s5k9x315vzm4glsmji0-libossp-uuid-1.6.2/lib/libuuid.so
test/DrogonSQL_test: /nix/store/3gjnn0qidg12aqb9byjnp7f563mkv3s3-brotli-1.0.9-lib/lib/libbrotlidec.so
test/DrogonSQL_test: /nix/store/3gjnn0qidg12aqb9byjnp7f563mkv3s3-brotli-1.0.9-lib/lib/libbrotlienc.so
test/DrogonSQL_test: /nix/store/3gjnn0qidg12aqb9byjnp7f563mkv3s3-brotli-1.0.9-lib/lib/libbrotlicommon.so
test/DrogonSQL_test: /nix/store/hhdy2c3ig2vm05f1bljzwa4yasqhvx22-sqlite-3.36.0/lib/libsqlite3.so
test/DrogonSQL_test: /nix/store/2yy85x1bhwmynzmpr4n29caxpfm0bkk4-zlib-1.2.12/lib/libz.so
test/DrogonSQL_test: /nix/store/dmhq727zgz5zixq1vz22kqji5y1bgm5i-openssl-1.1.1o/lib/libssl.so
test/DrogonSQL_test: /nix/store/dmhq727zgz5zixq1vz22kqji5y1bgm5i-openssl-1.1.1o/lib/libcrypto.so
test/DrogonSQL_test: test/CMakeFiles/DrogonSQL_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/runner/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DrogonSQL_test"
	cd /home/runner/app/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DrogonSQL_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/DrogonSQL_test.dir/build: test/DrogonSQL_test
.PHONY : test/CMakeFiles/DrogonSQL_test.dir/build

test/CMakeFiles/DrogonSQL_test.dir/clean:
	cd /home/runner/app/build/test && $(CMAKE_COMMAND) -P CMakeFiles/DrogonSQL_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/DrogonSQL_test.dir/clean

test/CMakeFiles/DrogonSQL_test.dir/depend:
	cd /home/runner/app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/runner/app/server /home/runner/app/server/test /home/runner/app/build /home/runner/app/build/test /home/runner/app/build/test/CMakeFiles/DrogonSQL_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/DrogonSQL_test.dir/depend

