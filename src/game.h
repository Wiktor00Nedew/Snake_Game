#ifndef SNAKE_GAME_H
#define SNAKE_GAME_H

#include <systems/listener.h>
#include <events/gameEvent.h>
#include <iostream>
#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include <systems/scene.h>
#include <state/machine.h>
#include <systems/map.h>
#include <systems/stats.h>
#include <SFML/Audio.hpp>

class Game : public Listener<GameEvent>, public Listener<sf::Event> {
private:
	sf::RenderWindow window_;
	bool active_;
    Machine scenes_;

    Map map_;

    Stats stats_;

    sf::Music gameMusic;
    sf::Music menuMusic;

    sf::Text credits1_;
    sf::Text credits2_;

public:
	void run();	//runs the whole game loop
	void onNotify(const GameEvent& event) override;	//reacts to events
	void onNotify(const sf::Event& event) override;	//reacts to sf::Event 
	Game();	//constructor
	~Game();	//destructor
	Scene* getScene();
	Scene* newGame();
    Scene* newMenu();

	void startGameMusic();
	void startMenuMusic();
};
#endif // !SNAKE_GAME_H

