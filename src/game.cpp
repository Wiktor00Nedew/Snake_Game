#include "game.h"
#include <systems/inputHandler.h>
#include <iostream>
#include <systems/assetManager.h>
#include <objects/snake.h>
#include <objects/button.h>


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

        window_.clear(sf::Color(19, 82, 29));
        if(scene->type == Scene::Game){
            window_.draw(map_);
        }
        window_.draw(*scene);
        window_.draw(stats_);
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
	scenes_.add(newMenu());

	active_ = true;
}

void Game::onNotify(const GameEvent& event) {
    if(event.type == GameEvent::GameOver){
        stats_.setPoints(0);
        scenes_.replace(newMenu());
    }
}

void Game::onNotify(const sf::Event& event) {
	if (event.type == sf::Event::Closed) {
		active_ = false;
	}
}

Game::~Game() {
    InputHandler::get().removeListener(this);
    gameMusic.stop();
    menuMusic.stop();
    scenes_.clear();
}

Scene* Game::newGame() {
    startGameMusic();
    Scene* scene = new Scene(scenes_);
    scene->type = Scene::Game;
    scene->addObject(new Point(map_));
    scene->addObject(new Snake(map_));
    return scene;
}

Scene* Game::getScene() {
    return static_cast<Scene*>(scenes_.getState());
}

Scene* Game::newMenu() {
    startMenuMusic();
    Scene* scene = new Scene(scenes_);
    scene->type = Scene::Menu;
    scene->addObject(new Button([&](){
        scenes_.replace(newGame());
    }, {static_cast<float>(window_.getSize().x / 2), 240}, "PLAY"));
    scene->addObject(new Button([&](){
        stats_.setHighScore(0);
        stats_.updateFile();
    }, {static_cast<float>(window_.getSize().x / 2), 340}, "RESET HIGHSCORE"));
    scene->addObject(new Button([&](){
        active_ = false;
    }, {static_cast<float>(window_.getSize().x / 2), 440}, "EXIT"));
    return scene;
}

void Game::startGameMusic() {
    menuMusic.stop();
    gameMusic.openFromFile("../assets/music.wav");
    gameMusic.setLoop(true);
    gameMusic.play();
}

void Game::startMenuMusic() {
    gameMusic.stop();
    menuMusic.openFromFile("../assets/menuMusic.wav");
    menuMusic.setLoop(true);
    menuMusic.play();
}
