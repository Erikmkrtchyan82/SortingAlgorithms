# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\HP\CLionProjects\sorting_algorithms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\HP\CLionProjects\sorting_algorithms\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/sorting_algorithms.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sorting_algorithms.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sorting_algorithms.dir/flags.make

CMakeFiles/sorting_algorithms.dir/main.cpp.obj: CMakeFiles/sorting_algorithms.dir/flags.make
CMakeFiles/sorting_algorithms.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\HP\CLionProjects\sorting_algorithms\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sorting_algorithms.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\sorting_algorithms.dir\main.cpp.obj -c C:\Users\HP\CLionProjects\sorting_algorithms\main.cpp

CMakeFiles/sorting_algorithms.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sorting_algorithms.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\CLionProjects\sorting_algorithms\main.cpp > CMakeFiles\sorting_algorithms.dir\main.cpp.i

CMakeFiles/sorting_algorithms.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sorting_algorithms.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\CLionProjects\sorting_algorithms\main.cpp -o CMakeFiles\sorting_algorithms.dir\main.cpp.s

# Object files for target sorting_algorithms
sorting_algorithms_OBJECTS = \
"CMakeFiles/sorting_algorithms.dir/main.cpp.obj"

# External object files for target sorting_algorithms
sorting_algorithms_EXTERNAL_OBJECTS =

sorting_algorithms.exe: CMakeFiles/sorting_algorithms.dir/main.cpp.obj
sorting_algorithms.exe: CMakeFiles/sorting_algorithms.dir/build.make
sorting_algorithms.exe: CMakeFiles/sorting_algorithms.dir/linklibs.rsp
sorting_algorithms.exe: CMakeFiles/sorting_algorithms.dir/objects1.rsp
sorting_algorithms.exe: CMakeFiles/sorting_algorithms.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\HP\CLionProjects\sorting_algorithms\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sorting_algorithms.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\sorting_algorithms.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sorting_algorithms.dir/build: sorting_algorithms.exe

.PHONY : CMakeFiles/sorting_algorithms.dir/build

CMakeFiles/sorting_algorithms.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\sorting_algorithms.dir\cmake_clean.cmake
.PHONY : CMakeFiles/sorting_algorithms.dir/clean

CMakeFiles/sorting_algorithms.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\HP\CLionProjects\sorting_algorithms C:\Users\HP\CLionProjects\sorting_algorithms C:\Users\HP\CLionProjects\sorting_algorithms\cmake-build-debug C:\Users\HP\CLionProjects\sorting_algorithms\cmake-build-debug C:\Users\HP\CLionProjects\sorting_algorithms\cmake-build-debug\CMakeFiles\sorting_algorithms.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sorting_algorithms.dir/depend
