#include "inputHandler.h"

void InputHandler::registerWindow(sf::Window* window) {
	InputHandler::window = window;
}

void InputHandler::handleEvents() {
	sf::Event event;
	while (window->pollEvent(event)) {
		notify(event);
	}
	Signal::handleEvents();
}