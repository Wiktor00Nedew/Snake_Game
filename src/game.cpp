#include "game.h"
#include <systems/inputHandler.h>
#include <iostream>
#include <systems/assetManager.h>
#include <objects/snake.h>

void Game::run() {
	sf::Clock clock;
	sf::Time time;
	Scene* scene;

	while (active_) {
		time = clock.restart();
		scene = getScene();
		InputHandler::get().handleEvents();

		scene->update(time);

		eventSender.handleEvents();
        window_.clear();
        if(scene->type == Scene::Game)
            window_.draw(map_);
        window_.draw(*scene);
		window_.display();
	}
    eventSender.removeListener(this);
}

Game::Game() {
    AssetManager::get().load();
	window_.create(sf::VideoMode(1920, 1080), "Snake", sf::Style::Fullscreen);
	window_.setFramerateLimit(60);
	window_.setVerticalSyncEnabled(true);
	InputHandler::get().registerWindow(&window_);

	InputHandler::get().addListener(this);
	eventSender.addListener(this);
	scenes_.add(newGame());

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
    InputHandler::get().removeListener(this);
    scenes_.clear();
}

Scene* Game::newGame() {
    Scene* scene = new Scene(scenes_);
    scene->type = Scene::Game;
    scene->addObject(new Snake(map_));
    return scene;
}

Scene* Game::getScene() {
    return static_cast<Scene*>(scenes_.getState());
}
