#include "game.h"

void Game::run() {
	
	sf::Clock clock;
	sf::Time time;

	while (active_) {
		time = clock.restart();

		window_.clear();
		
		InputHandler::get().handleEvents();

		window_.display();
	}
}

Game::Game() {
	window_.create(sf::VideoMode(1920, 1080), "Snake", sf::Style::Default);
	window_.setFramerateLimit(60);
	window_.setVerticalSyncEnabled(true);

	InputHandler::get().registerWindow(&window_);

	InputHandler::get().addListener(this);

	active_ = true;
}

void Game::onNotify(const GameEvent& event) {
	
}

void Game::onNotify(const sf::Event& event) {
	if (event.type == sf::Event::Closed) {
		active_ = false;
	}
}

Game::~Game() {

}