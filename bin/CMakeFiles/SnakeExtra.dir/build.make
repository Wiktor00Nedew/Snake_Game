# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin"

# Include any dependencies generated for this target.
include CMakeFiles/SnakeExtra.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SnakeExtra.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SnakeExtra.dir/flags.make

CMakeFiles/SnakeExtra.dir/src/main.cpp.obj: CMakeFiles/SnakeExtra.dir/flags.make
CMakeFiles/SnakeExtra.dir/src/main.cpp.obj: CMakeFiles/SnakeExtra.dir/includes_CXX.rsp
CMakeFiles/SnakeExtra.dir/src/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SnakeExtra.dir/src/main.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SnakeExtra.dir\src\main.cpp.obj -c "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\main.cpp"

CMakeFiles/SnakeExtra.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnakeExtra.dir/src/main.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\main.cpp" > CMakeFiles\SnakeExtra.dir\src\main.cpp.i

CMakeFiles/SnakeExtra.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnakeExtra.dir/src/main.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\main.cpp" -o CMakeFiles\SnakeExtra.dir\src\main.cpp.s

# Object files for target SnakeExtra
SnakeExtra_OBJECTS = \
"CMakeFiles/SnakeExtra.dir/src/main.cpp.obj"

# External object files for target SnakeExtra
SnakeExtra_EXTERNAL_OBJECTS =

SnakeExtra.exe: CMakeFiles/SnakeExtra.dir/src/main.cpp.obj
SnakeExtra.exe: CMakeFiles/SnakeExtra.dir/build.make
SnakeExtra.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-graphics-d.a
SnakeExtra.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-window-d.a
SnakeExtra.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-audio-d.a
SnakeExtra.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-network-d.a
SnakeExtra.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-system-d.a
SnakeExtra.exe: CMakeFiles/SnakeExtra.dir/linklibs.rsp
SnakeExtra.exe: CMakeFiles/SnakeExtra.dir/objects1.rsp
SnakeExtra.exe: CMakeFiles/SnakeExtra.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SnakeExtra.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SnakeExtra.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SnakeExtra.dir/build: SnakeExtra.exe

.PHONY : CMakeFiles/SnakeExtra.dir/build

CMakeFiles/SnakeExtra.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SnakeExtra.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SnakeExtra.dir/clean

CMakeFiles/SnakeExtra.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra" "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra" "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin" "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin" "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles\SnakeExtra.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/SnakeExtra.dir/depend
