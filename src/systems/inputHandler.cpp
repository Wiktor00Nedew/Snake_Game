#include "inputHandler.h"

void InputHandler::registerWindow(sf::Window* window) {
	window_ = window;
}

void InputHandler::handleEvents() {
	sf::Event event;
	while (window_->pollEvent(event)) {
		notify(event);
	}
	Signal::handleEvents();
}