#ifndef SNAKE_GAMEEVENT_H
#define SNAKE_GAMEEVENT_H

#include <systems/signal.h>
#include <SFML/System.hpp>

struct GameEvent {
	GameEvent();	//constructor

	enum Type {	//possible event types
		Closed,
		GameOver,
		PointEaten,
		PointCreated
	};

	struct PointCreatedEvent{
	    sf::Vector2u pos;
	};

	struct PointEatenEvent{
	   std::vector<sf::Vector2u> positions;
	};

	Type type;	//event type

	union {
	    PointCreatedEvent pointCreated;
	};

    PointEatenEvent pointEaten;
};

extern Signal<GameEvent> eventSender;	//main game event signal  
#endif // !SNAKE_GAME_EVENT_H
