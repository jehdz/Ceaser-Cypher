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
include CMakeFiles/ceaser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ceaser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ceaser.dir/flags.make

CMakeFiles/ceaser.dir/ceaser.c.o: CMakeFiles/ceaser.dir/flags.make
CMakeFiles/ceaser.dir/ceaser.c.o: ../ceaser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jehdz/Desktop/Ceaser-Cypher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ceaser.dir/ceaser.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ceaser.dir/ceaser.c.o -c /Users/jehdz/Desktop/Ceaser-Cypher/ceaser.c

CMakeFiles/ceaser.dir/ceaser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ceaser.dir/ceaser.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jehdz/Desktop/Ceaser-Cypher/ceaser.c > CMakeFiles/ceaser.dir/ceaser.c.i

CMakeFiles/ceaser.dir/ceaser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ceaser.dir/ceaser.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jehdz/Desktop/Ceaser-Cypher/ceaser.c -o CMakeFiles/ceaser.dir/ceaser.c.s

# Object files for target ceaser
ceaser_OBJECTS = \
"CMakeFiles/ceaser.dir/ceaser.c.o"

# External object files for target ceaser
ceaser_EXTERNAL_OBJECTS =

bin/ceaser: CMakeFiles/ceaser.dir/ceaser.c.o
bin/ceaser: CMakeFiles/ceaser.dir/build.make
bin/ceaser: CMakeFiles/ceaser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jehdz/Desktop/Ceaser-Cypher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/ceaser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ceaser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ceaser.dir/build: bin/ceaser

.PHONY : CMakeFiles/ceaser.dir/build

CMakeFiles/ceaser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ceaser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ceaser.dir/clean

CMakeFiles/ceaser.dir/depend:
	cd /Users/jehdz/Desktop/Ceaser-Cypher/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jehdz/Desktop/Ceaser-Cypher /Users/jehdz/Desktop/Ceaser-Cypher /Users/jehdz/Desktop/Ceaser-Cypher/build /Users/jehdz/Desktop/Ceaser-Cypher/build /Users/jehdz/Desktop/Ceaser-Cypher/build/CMakeFiles/ceaser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ceaser.dir/depend

