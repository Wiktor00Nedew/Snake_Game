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
include CMakeFiles/Snake.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Snake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Snake.dir/flags.make

CMakeFiles/Snake.dir/src/main.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/main.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Snake.dir/src/main.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\main.cpp.obj -c "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\main.cpp"

CMakeFiles/Snake.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/main.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\main.cpp" > CMakeFiles\Snake.dir\src\main.cpp.i

CMakeFiles/Snake.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/main.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\main.cpp" -o CMakeFiles\Snake.dir\src\main.cpp.s

CMakeFiles/Snake.dir/src/game.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/game.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/game.cpp.obj: ../src/game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Snake.dir/src/game.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\game.cpp.obj -c "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\game.cpp"

CMakeFiles/Snake.dir/src/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/game.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\game.cpp" > CMakeFiles\Snake.dir\src\game.cpp.i

CMakeFiles/Snake.dir/src/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/game.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\game.cpp" -o CMakeFiles\Snake.dir\src\game.cpp.s

CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj: ../src/systems/singleton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\singleton.cpp.obj -c "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\systems\singleton.cpp"

CMakeFiles/Snake.dir/src/systems/singleton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/singleton.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\systems\singleton.cpp" > CMakeFiles\Snake.dir\src\systems\singleton.cpp.i

CMakeFiles/Snake.dir/src/systems/singleton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/singleton.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\systems\singleton.cpp" -o CMakeFiles\Snake.dir\src\systems\singleton.cpp.s

CMakeFiles/Snake.dir/src/systems/signal.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/signal.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/signal.cpp.obj: ../src/systems/signal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Snake.dir/src/systems/signal.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\signal.cpp.obj -c "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\systems\signal.cpp"

CMakeFiles/Snake.dir/src/systems/signal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/signal.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\systems\signal.cpp" > CMakeFiles\Snake.dir\src\systems\signal.cpp.i

CMakeFiles/Snake.dir/src/systems/signal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/signal.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\systems\signal.cpp" -o CMakeFiles\Snake.dir\src\systems\signal.cpp.s

CMakeFiles/Snake.dir/src/systems/listener.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/listener.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/listener.cpp.obj: ../src/systems/listener.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Snake.dir/src/systems/listener.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\listener.cpp.obj -c "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\systems\listener.cpp"

CMakeFiles/Snake.dir/src/systems/listener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/listener.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\systems\listener.cpp" > CMakeFiles\Snake.dir\src\systems\listener.cpp.i

CMakeFiles/Snake.dir/src/systems/listener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/listener.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\systems\listener.cpp" -o CMakeFiles\Snake.dir\src\systems\listener.cpp.s

CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj: ../src/events/gameEvent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\events\gameEvent.cpp.obj -c "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\events\gameEvent.cpp"

CMakeFiles/Snake.dir/src/events/gameEvent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/events/gameEvent.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\events\gameEvent.cpp" > CMakeFiles\Snake.dir\src\events\gameEvent.cpp.i

CMakeFiles/Snake.dir/src/events/gameEvent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/events/gameEvent.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\src\events\gameEvent.cpp" -o CMakeFiles\Snake.dir\src\events\gameEvent.cpp.s

# Object files for target Snake
Snake_OBJECTS = \
"CMakeFiles/Snake.dir/src/main.cpp.obj" \
"CMakeFiles/Snake.dir/src/game.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/signal.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/listener.cpp.obj" \
"CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj"

# External object files for target Snake
Snake_EXTERNAL_OBJECTS =

Snake.exe: CMakeFiles/Snake.dir/src/main.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/game.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/signal.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/listener.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/build.make
Snake.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-graphics-d.a
Snake.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-window-d.a
Snake.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-audio-d.a
Snake.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-network-d.a
Snake.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-system-d.a
Snake.exe: CMakeFiles/Snake.dir/linklibs.rsp
Snake.exe: CMakeFiles/Snake.dir/objects1.rsp
Snake.exe: CMakeFiles/Snake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable Snake.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Snake.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Snake.dir/build: Snake.exe

.PHONY : CMakeFiles/Snake.dir/build

CMakeFiles/Snake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Snake.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Snake.dir/clean

CMakeFiles/Snake.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra" "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra" "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin" "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin" "C:\Users\Wiktor\Desktop\Wiktor\C++ projects\SnakeExtra\bin\CMakeFiles\Snake.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Snake.dir/depend

