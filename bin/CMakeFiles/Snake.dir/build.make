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
CMAKE_SOURCE_DIR = C:\Users\Wiktor\CLionProjects\Snake_Game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Wiktor\CLionProjects\Snake_Game\bin

# Include any dependencies generated for this target.
include CMakeFiles/Snake.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Snake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Snake.dir/flags.make

CMakeFiles/Snake.dir/src/main.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/main.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Snake.dir/src/main.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\main.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\main.cpp

CMakeFiles/Snake.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/main.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\main.cpp > CMakeFiles\Snake.dir\src\main.cpp.i

CMakeFiles/Snake.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/main.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\main.cpp -o CMakeFiles\Snake.dir\src\main.cpp.s

CMakeFiles/Snake.dir/src/game.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/game.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/game.cpp.obj: ../src/game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Snake.dir/src/game.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\game.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\game.cpp

CMakeFiles/Snake.dir/src/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/game.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\game.cpp > CMakeFiles\Snake.dir\src\game.cpp.i

CMakeFiles/Snake.dir/src/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/game.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\game.cpp -o CMakeFiles\Snake.dir\src\game.cpp.s

CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj: ../src/systems/singleton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\singleton.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\singleton.cpp

CMakeFiles/Snake.dir/src/systems/singleton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/singleton.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\singleton.cpp > CMakeFiles\Snake.dir\src\systems\singleton.cpp.i

CMakeFiles/Snake.dir/src/systems/singleton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/singleton.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\singleton.cpp -o CMakeFiles\Snake.dir\src\systems\singleton.cpp.s

CMakeFiles/Snake.dir/src/systems/signal.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/signal.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/signal.cpp.obj: ../src/systems/signal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Snake.dir/src/systems/signal.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\signal.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\signal.cpp

CMakeFiles/Snake.dir/src/systems/signal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/signal.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\signal.cpp > CMakeFiles\Snake.dir\src\systems\signal.cpp.i

CMakeFiles/Snake.dir/src/systems/signal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/signal.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\signal.cpp -o CMakeFiles\Snake.dir\src\systems\signal.cpp.s

CMakeFiles/Snake.dir/src/systems/listener.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/listener.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/listener.cpp.obj: ../src/systems/listener.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Snake.dir/src/systems/listener.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\listener.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\listener.cpp

CMakeFiles/Snake.dir/src/systems/listener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/listener.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\listener.cpp > CMakeFiles\Snake.dir\src\systems\listener.cpp.i

CMakeFiles/Snake.dir/src/systems/listener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/listener.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\listener.cpp -o CMakeFiles\Snake.dir\src\systems\listener.cpp.s

CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj: ../src/events/gameEvent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\events\gameEvent.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\events\gameEvent.cpp

CMakeFiles/Snake.dir/src/events/gameEvent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/events/gameEvent.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\events\gameEvent.cpp > CMakeFiles\Snake.dir\src\events\gameEvent.cpp.i

CMakeFiles/Snake.dir/src/events/gameEvent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/events/gameEvent.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\events\gameEvent.cpp -o CMakeFiles\Snake.dir\src\events\gameEvent.cpp.s

CMakeFiles/Snake.dir/src/systems/inputHandler.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/inputHandler.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/inputHandler.cpp.obj: ../src/systems/inputHandler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Snake.dir/src/systems/inputHandler.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\inputHandler.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\inputHandler.cpp

CMakeFiles/Snake.dir/src/systems/inputHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/inputHandler.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\inputHandler.cpp > CMakeFiles\Snake.dir\src\systems\inputHandler.cpp.i

CMakeFiles/Snake.dir/src/systems/inputHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/inputHandler.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\inputHandler.cpp -o CMakeFiles\Snake.dir\src\systems\inputHandler.cpp.s

CMakeFiles/Snake.dir/src/state/stateEvent.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/state/stateEvent.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/state/stateEvent.cpp.obj: ../src/state/stateEvent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Snake.dir/src/state/stateEvent.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\state\stateEvent.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\state\stateEvent.cpp

CMakeFiles/Snake.dir/src/state/stateEvent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/state/stateEvent.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\state\stateEvent.cpp > CMakeFiles\Snake.dir\src\state\stateEvent.cpp.i

CMakeFiles/Snake.dir/src/state/stateEvent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/state/stateEvent.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\state\stateEvent.cpp -o CMakeFiles\Snake.dir\src\state\stateEvent.cpp.s

CMakeFiles/Snake.dir/src/state/state.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/state/state.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/state/state.cpp.obj: ../src/state/state.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Snake.dir/src/state/state.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\state\state.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\state\state.cpp

CMakeFiles/Snake.dir/src/state/state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/state/state.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\state\state.cpp > CMakeFiles\Snake.dir\src\state\state.cpp.i

CMakeFiles/Snake.dir/src/state/state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/state/state.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\state\state.cpp -o CMakeFiles\Snake.dir\src\state\state.cpp.s

CMakeFiles/Snake.dir/src/state/machine.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/state/machine.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/state/machine.cpp.obj: ../src/state/machine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Snake.dir/src/state/machine.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\state\machine.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\state\machine.cpp

CMakeFiles/Snake.dir/src/state/machine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/state/machine.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\state\machine.cpp > CMakeFiles\Snake.dir\src\state\machine.cpp.i

CMakeFiles/Snake.dir/src/state/machine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/state/machine.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\state\machine.cpp -o CMakeFiles\Snake.dir\src\state\machine.cpp.s

CMakeFiles/Snake.dir/src/objects/gameObject.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/objects/gameObject.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/objects/gameObject.cpp.obj: ../src/objects/gameObject.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Snake.dir/src/objects/gameObject.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\objects\gameObject.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\objects\gameObject.cpp

CMakeFiles/Snake.dir/src/objects/gameObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/objects/gameObject.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\objects\gameObject.cpp > CMakeFiles\Snake.dir\src\objects\gameObject.cpp.i

CMakeFiles/Snake.dir/src/objects/gameObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/objects/gameObject.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\objects\gameObject.cpp -o CMakeFiles\Snake.dir\src\objects\gameObject.cpp.s

CMakeFiles/Snake.dir/src/systems/scene.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/scene.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/scene.cpp.obj: ../src/systems/scene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Snake.dir/src/systems/scene.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\scene.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\scene.cpp

CMakeFiles/Snake.dir/src/systems/scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/scene.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\scene.cpp > CMakeFiles\Snake.dir\src\systems\scene.cpp.i

CMakeFiles/Snake.dir/src/systems/scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/scene.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\scene.cpp -o CMakeFiles\Snake.dir\src\systems\scene.cpp.s

CMakeFiles/Snake.dir/src/systems/map.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/map.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/map.cpp.obj: ../src/systems/map.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Snake.dir/src/systems/map.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\map.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\map.cpp

CMakeFiles/Snake.dir/src/systems/map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/map.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\map.cpp > CMakeFiles\Snake.dir\src\systems\map.cpp.i

CMakeFiles/Snake.dir/src/systems/map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/map.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\map.cpp -o CMakeFiles\Snake.dir\src\systems\map.cpp.s

CMakeFiles/Snake.dir/src/systems/field.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/field.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/field.cpp.obj: ../src/systems/field.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/Snake.dir/src/systems/field.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\field.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\field.cpp

CMakeFiles/Snake.dir/src/systems/field.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/field.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\field.cpp > CMakeFiles\Snake.dir\src\systems\field.cpp.i

CMakeFiles/Snake.dir/src/systems/field.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/field.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\field.cpp -o CMakeFiles\Snake.dir\src\systems\field.cpp.s

CMakeFiles/Snake.dir/src/systems/assetManager.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/assetManager.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/assetManager.cpp.obj: ../src/systems/assetManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/Snake.dir/src/systems/assetManager.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\assetManager.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\assetManager.cpp

CMakeFiles/Snake.dir/src/systems/assetManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/assetManager.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\assetManager.cpp > CMakeFiles\Snake.dir\src\systems\assetManager.cpp.i

CMakeFiles/Snake.dir/src/systems/assetManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/assetManager.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\assetManager.cpp -o CMakeFiles\Snake.dir\src\systems\assetManager.cpp.s

CMakeFiles/Snake.dir/src/objects/snake.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/objects/snake.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/objects/snake.cpp.obj: ../src/objects/snake.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/Snake.dir/src/objects/snake.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\objects\snake.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\objects\snake.cpp

CMakeFiles/Snake.dir/src/objects/snake.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/objects/snake.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\objects\snake.cpp > CMakeFiles\Snake.dir\src\objects\snake.cpp.i

CMakeFiles/Snake.dir/src/objects/snake.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/objects/snake.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\objects\snake.cpp -o CMakeFiles\Snake.dir\src\objects\snake.cpp.s

CMakeFiles/Snake.dir/src/objects/point.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/objects/point.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/objects/point.cpp.obj: ../src/objects/point.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/Snake.dir/src/objects/point.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\objects\point.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\objects\point.cpp

CMakeFiles/Snake.dir/src/objects/point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/objects/point.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\objects\point.cpp > CMakeFiles\Snake.dir\src\objects\point.cpp.i

CMakeFiles/Snake.dir/src/objects/point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/objects/point.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\objects\point.cpp -o CMakeFiles\Snake.dir\src\objects\point.cpp.s

CMakeFiles/Snake.dir/src/systems/stats.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/systems/stats.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/systems/stats.cpp.obj: ../src/systems/stats.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/Snake.dir/src/systems/stats.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Snake.dir\src\systems\stats.cpp.obj -c C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\stats.cpp

CMakeFiles/Snake.dir/src/systems/stats.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/systems/stats.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\stats.cpp > CMakeFiles\Snake.dir\src\systems\stats.cpp.i

CMakeFiles/Snake.dir/src/systems/stats.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/systems/stats.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Wiktor\CLionProjects\Snake_Game\src\systems\stats.cpp -o CMakeFiles\Snake.dir\src\systems\stats.cpp.s

# Object files for target Snake
Snake_OBJECTS = \
"CMakeFiles/Snake.dir/src/main.cpp.obj" \
"CMakeFiles/Snake.dir/src/game.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/signal.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/listener.cpp.obj" \
"CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/inputHandler.cpp.obj" \
"CMakeFiles/Snake.dir/src/state/stateEvent.cpp.obj" \
"CMakeFiles/Snake.dir/src/state/state.cpp.obj" \
"CMakeFiles/Snake.dir/src/state/machine.cpp.obj" \
"CMakeFiles/Snake.dir/src/objects/gameObject.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/scene.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/map.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/field.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/assetManager.cpp.obj" \
"CMakeFiles/Snake.dir/src/objects/snake.cpp.obj" \
"CMakeFiles/Snake.dir/src/objects/point.cpp.obj" \
"CMakeFiles/Snake.dir/src/systems/stats.cpp.obj"

# External object files for target Snake
Snake_EXTERNAL_OBJECTS =

Snake.exe: CMakeFiles/Snake.dir/src/main.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/game.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/singleton.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/signal.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/listener.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/events/gameEvent.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/inputHandler.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/state/stateEvent.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/state/state.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/state/machine.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/objects/gameObject.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/scene.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/map.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/field.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/assetManager.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/objects/snake.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/objects/point.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/systems/stats.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/build.make
Snake.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-graphics-d.a
Snake.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-window-d.a
Snake.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-audio-d.a
Snake.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-network-d.a
Snake.exe: ../libraries/win/SFML-2.5.1/lib/libsfml-system-d.a
Snake.exe: CMakeFiles/Snake.dir/linklibs.rsp
Snake.exe: CMakeFiles/Snake.dir/objects1.rsp
Snake.exe: CMakeFiles/Snake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX executable Snake.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Snake.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Snake.dir/build: Snake.exe

.PHONY : CMakeFiles/Snake.dir/build

CMakeFiles/Snake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Snake.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Snake.dir/clean

CMakeFiles/Snake.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Wiktor\CLionProjects\Snake_Game C:\Users\Wiktor\CLionProjects\Snake_Game C:\Users\Wiktor\CLionProjects\Snake_Game\bin C:\Users\Wiktor\CLionProjects\Snake_Game\bin C:\Users\Wiktor\CLionProjects\Snake_Game\bin\CMakeFiles\Snake.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Snake.dir/depend

