#ifndef GAME_H
#define GAME_H

#include "systems/listener.h"
#include "events/gameEvent.h"
#include <iostream>
#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include "systems/inputHandler.h"

class Game : public Listener<GameEvent>, public Listener<sf::Event> {
private:
	sf::RenderWindow window_;
	bool active_;

public:
	void run();	//runs the whole game loop
	void onNotify(const GameEvent& event) override;	//reacts to events
	void onNotify(const sf::Event& event) override;	//reacts to sf::Event 
	Game();	//constructor
	~Game();	//destructor
};
#endif // !GAME_H

