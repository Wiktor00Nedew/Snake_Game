#ifndef SNAKE_INPUTHANDLER_H
#define SNAKE_INPUTHANDLER_H

#include "signal.h"
#include "singleton.h"
#include <SFML/Window.hpp>

class InputHandler : public Singleton<InputHandler>, public Signal<sf::Event> {
private:
    sf::Window* window_;
public:
    void init();
    void registerWindow(sf::Window* window);
    void handleEvents();
};
#endif // !SNAKE_INPUTHANDLER_H
