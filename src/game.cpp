#include "game.h"

void Game::run() {
	
	sf::Clock clock;
	sf::Time time;

	while (active) {
		time = clock.restart();

		window.clear();
		sf::Event event;
		while(window.pollEvent(event)){
            if(event.type == sf::Event::Closed){
                active = false;
            }
		}
		
		window.display();
	}
}

Game::Game() {
	window.create(sf::VideoMode(1920, 1080), "Snake", sf::Style::Default);
	window.setFramerateLimit(60);
	window.setVerticalSyncEnabled(true);

	active = true;
}

void Game::onNotify(const GameEvent& event) {
	
}

void Game::onNotify(const sf::Event& event) {

}

Game::~Game() {

}