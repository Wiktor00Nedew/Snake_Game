#ifndef SNAKE_INPUTHANDLER_H
#define SNAKE_INPUTHANDLER_H

#include "singleton.h"
#include "signal.h"
#include <SFML/Graphics.hpp>

class InputHandler : public Singleton<InputHandler>, public Signal<sf::Event> {
public:
	void registerWindow(sf::Window* window);
	void handleEvents();

private:
	sf::Window* window_;
};
#endif // !SNAKE_INPUTHANDLER_H
