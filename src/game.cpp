#include "game.h"

void Game::run() {
	
	sf::Clock clock;
	sf::Time time;

	while (active) {
		time = clock.restart();

		window.clear();
		
		InputHandler::get().handleEvents();

		window.display();
	}
}

Game::Game() {
	window.create(sf::VideoMode(1920, 1080), "Snake", sf::Style::Default);
	window.setFramerateLimit(60);
	window.setVerticalSyncEnabled(true);

	InputHandler::get().registerWindow(&window);

	InputHandler::get().addListener(this);

	active = true;
}

void Game::onNotify(const GameEvent& event) {
	
}

void Game::onNotify(const sf::Event& event) {
	if (event.type == sf::Event::Closed) {
		active = false;
	}
}

Game::~Game() {

}