cmake_minimum_required(VERSION 3.8)

project(Snake)

set(CMAKE_CXX_STANDARD 17)

# includes
include_directories(src)

# find SFML 2.5
if(MSVC)
    set(SFML_DIR libraries/msvc/SFML-2.5.1/lib/cmake/SFML/)
elseif(WIN32)
    set(SFML_DIR libraries/win/SFML-2.5.1/lib/cmake/SFML/)
else()
    set(SFML_DIR libraries/unix/SFML-2.5.1/lib/cmake/SFML/)
endif(MSVC)


find_package(SFML 2.5 COMPONENTS graphics window system audio network REQUIRED)

# add execs
add_executable(Snake "src/main.cpp" "src/game.h" "src/game.cpp" "src/systems/singleton.cpp" "src/systems/singleton.h" "src/systems/signal.h" "src/systems/signal.cpp" "src/systems/listener.h" "src/systems/listener.cpp" "src/events/gameEvent.h" "src/events/gameEvent.cpp" "src/systems/inputHandler.h" "src/systems/inputHandler.cpp" "src/state/stateEvent.h" "src/state/stateEvent.cpp" "src/state/state.h" "src/state/state.cpp" "src/state/machine.h" "src/state/machine.cpp" "src/objects/gameObject.h" "src/objects/gameObject.cpp" src/systems/scene.cpp src/systems/scene.h src/systems/map.cpp src/systems/map.h src/systems/field.cpp src/systems/field.h src/systems/assetManager.cpp src/systems/assetManager.h src/objects/snake.cpp src/objects/snake.h src/objects/point.cpp src/objects/point.h src/systems/stats.cpp src/systems/stats.h src/objects/button.cpp src/objects/button.h)

# compile options
target_compile_options(Snake PRIVATE -Wall)

# link libraries
target_link_libraries(Snake sfml-graphics sfml-window sfml-system sfml-audio sfml-network)
