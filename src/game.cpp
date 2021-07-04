#include "game.h"
#include <systems/inputHandler.h>
#include <iostream>
#include <systems/assetManager.h>

void Game::run() {
	sf::Clock clock;
	sf::Time time;
	Scene* scene;

	while (active_) {
		time = clock.restart();
		scene = getScene();
        std::cout << "added time and scene" << "\n";
		InputHandler::get().handleEvents();

		scene->update(time);
        std::cout << "handled events and updated scene" << "\n";
        window_.clear();
        if(scene->type == Scene::Game)
            window_.draw(map_);
        std::cout << "drawn map" << "\n";
        window_.draw(*scene);
        window_.draw(AssetManager::get().path);
		window_.display();
	}
    eventSender.removeListener(this);
}

Game::Game() {

	window_.create(sf::VideoMode(1920, 1080), "Snake", sf::Style::Default);
	window_.setFramerateLimit(60);
	window_.setVerticalSyncEnabled(true);
    std::cout << "Window created" << "\n";
	InputHandler::get().registerWindow(&window_);

	InputHandler::get().addListener(this);
	eventSender.addListener(this);
    std::cout << "added handling events" << "\n";
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
    std::cout << "added scene" << "\n";
    return scene;
}

Scene* Game::getScene() {
    return static_cast<Scene*>(scenes_.getState());
}
