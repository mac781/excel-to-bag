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
CMAKE_SOURCE_DIR = /home/user/excel-to-bag/src/csv-parser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/excel-to-bag/build/csv

# Include any dependencies generated for this target.
include single_include_test/CMakeFiles/single_include_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include single_include_test/CMakeFiles/single_include_test.dir/compiler_depend.make

# Include the progress variables for this target.
include single_include_test/CMakeFiles/single_include_test.dir/progress.make

# Include the compile flags for this target's objects.
include single_include_test/CMakeFiles/single_include_test.dir/flags.make

single_include_test/CMakeFiles/single_include_test.dir/file1.cpp.o: single_include_test/CMakeFiles/single_include_test.dir/flags.make
single_include_test/CMakeFiles/single_include_test.dir/file1.cpp.o: /home/user/excel-to-bag/src/csv-parser/single_include_test/file1.cpp
single_include_test/CMakeFiles/single_include_test.dir/file1.cpp.o: single_include_test/CMakeFiles/single_include_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/excel-to-bag/build/csv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object single_include_test/CMakeFiles/single_include_test.dir/file1.cpp.o"
	cd /home/user/excel-to-bag/build/csv/single_include_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT single_include_test/CMakeFiles/single_include_test.dir/file1.cpp.o -MF CMakeFiles/single_include_test.dir/file1.cpp.o.d -o CMakeFiles/single_include_test.dir/file1.cpp.o -c /home/user/excel-to-bag/src/csv-parser/single_include_test/file1.cpp

single_include_test/CMakeFiles/single_include_test.dir/file1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/single_include_test.dir/file1.cpp.i"
	cd /home/user/excel-to-bag/build/csv/single_include_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/excel-to-bag/src/csv-parser/single_include_test/file1.cpp > CMakeFiles/single_include_test.dir/file1.cpp.i

single_include_test/CMakeFiles/single_include_test.dir/file1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/single_include_test.dir/file1.cpp.s"
	cd /home/user/excel-to-bag/build/csv/single_include_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/excel-to-bag/src/csv-parser/single_include_test/file1.cpp -o CMakeFiles/single_include_test.dir/file1.cpp.s

single_include_test/CMakeFiles/single_include_test.dir/file2.cpp.o: single_include_test/CMakeFiles/single_include_test.dir/flags.make
single_include_test/CMakeFiles/single_include_test.dir/file2.cpp.o: /home/user/excel-to-bag/src/csv-parser/single_include_test/file2.cpp
single_include_test/CMakeFiles/single_include_test.dir/file2.cpp.o: single_include_test/CMakeFiles/single_include_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/excel-to-bag/build/csv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object single_include_test/CMakeFiles/single_include_test.dir/file2.cpp.o"
	cd /home/user/excel-to-bag/build/csv/single_include_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT single_include_test/CMakeFiles/single_include_test.dir/file2.cpp.o -MF CMakeFiles/single_include_test.dir/file2.cpp.o.d -o CMakeFiles/single_include_test.dir/file2.cpp.o -c /home/user/excel-to-bag/src/csv-parser/single_include_test/file2.cpp

single_include_test/CMakeFiles/single_include_test.dir/file2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/single_include_test.dir/file2.cpp.i"
	cd /home/user/excel-to-bag/build/csv/single_include_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/excel-to-bag/src/csv-parser/single_include_test/file2.cpp > CMakeFiles/single_include_test.dir/file2.cpp.i

single_include_test/CMakeFiles/single_include_test.dir/file2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/single_include_test.dir/file2.cpp.s"
	cd /home/user/excel-to-bag/build/csv/single_include_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/excel-to-bag/src/csv-parser/single_include_test/file2.cpp -o CMakeFiles/single_include_test.dir/file2.cpp.s

# Object files for target single_include_test
single_include_test_OBJECTS = \
"CMakeFiles/single_include_test.dir/file1.cpp.o" \
"CMakeFiles/single_include_test.dir/file2.cpp.o"

# External object files for target single_include_test
single_include_test_EXTERNAL_OBJECTS =

single_include_test/single_include_test: single_include_test/CMakeFiles/single_include_test.dir/file1.cpp.o
single_include_test/single_include_test: single_include_test/CMakeFiles/single_include_test.dir/file2.cpp.o
single_include_test/single_include_test: single_include_test/CMakeFiles/single_include_test.dir/build.make
single_include_test/single_include_test: single_include_test/CMakeFiles/single_include_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/excel-to-bag/build/csv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable single_include_test"
	cd /home/user/excel-to-bag/build/csv/single_include_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/single_include_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
single_include_test/CMakeFiles/single_include_test.dir/build: single_include_test/single_include_test
.PHONY : single_include_test/CMakeFiles/single_include_test.dir/build

single_include_test/CMakeFiles/single_include_test.dir/clean:
	cd /home/user/excel-to-bag/build/csv/single_include_test && $(CMAKE_COMMAND) -P CMakeFiles/single_include_test.dir/cmake_clean.cmake
.PHONY : single_include_test/CMakeFiles/single_include_test.dir/clean

single_include_test/CMakeFiles/single_include_test.dir/depend:
	cd /home/user/excel-to-bag/build/csv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/excel-to-bag/src/csv-parser /home/user/excel-to-bag/src/csv-parser/single_include_test /home/user/excel-to-bag/build/csv /home/user/excel-to-bag/build/csv/single_include_test /home/user/excel-to-bag/build/csv/single_include_test/CMakeFiles/single_include_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : single_include_test/CMakeFiles/single_include_test.dir/depend

