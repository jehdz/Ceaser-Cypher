# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.18.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.18.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jehdz/Desktop/Ceaser-Cypher

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jehdz/Desktop/Ceaser-Cypher/build

# Include any dependencies generated for this target.
include CMakeFiles/ceaser_tests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ceaser_tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ceaser_tests.dir/flags.make

CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.o: CMakeFiles/ceaser_tests.dir/flags.make
CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.o: ../ceaser_tests.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jehdz/Desktop/Ceaser-Cypher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.o -c /Users/jehdz/Desktop/Ceaser-Cypher/ceaser_tests.cc

CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jehdz/Desktop/Ceaser-Cypher/ceaser_tests.cc > CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.i

CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jehdz/Desktop/Ceaser-Cypher/ceaser_tests.cc -o CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.s

CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.o: CMakeFiles/ceaser_tests.dir/flags.make
CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.o: ../ceaser_getTested.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jehdz/Desktop/Ceaser-Cypher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.o -c /Users/jehdz/Desktop/Ceaser-Cypher/ceaser_getTested.c

CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jehdz/Desktop/Ceaser-Cypher/ceaser_getTested.c > CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.i

CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jehdz/Desktop/Ceaser-Cypher/ceaser_getTested.c -o CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.s

# Object files for target ceaser_tests
ceaser_tests_OBJECTS = \
"CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.o" \
"CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.o"

# External object files for target ceaser_tests
ceaser_tests_EXTERNAL_OBJECTS =

bin/ceaser_tests: CMakeFiles/ceaser_tests.dir/ceaser_tests.cc.o
bin/ceaser_tests: CMakeFiles/ceaser_tests.dir/ceaser_getTested.c.o
bin/ceaser_tests: CMakeFiles/ceaser_tests.dir/build.make
bin/ceaser_tests: /usr/local/lib/libgtest.a
bin/ceaser_tests: CMakeFiles/ceaser_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jehdz/Desktop/Ceaser-Cypher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable bin/ceaser_tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ceaser_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ceaser_tests.dir/build: bin/ceaser_tests

.PHONY : CMakeFiles/ceaser_tests.dir/build

CMakeFiles/ceaser_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ceaser_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ceaser_tests.dir/clean

CMakeFiles/ceaser_tests.dir/depend:
	cd /Users/jehdz/Desktop/Ceaser-Cypher/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jehdz/Desktop/Ceaser-Cypher /Users/jehdz/Desktop/Ceaser-Cypher /Users/jehdz/Desktop/Ceaser-Cypher/build /Users/jehdz/Desktop/Ceaser-Cypher/build /Users/jehdz/Desktop/Ceaser-Cypher/build/CMakeFiles/ceaser_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ceaser_tests.dir/depend

