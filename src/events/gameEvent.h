#ifndef SNAKE_GAMEEVENT_H
#define SNAKE_GAMEEVENT_H

#include "../systems/signal.h"

struct GameEvent {
	GameEvent() = default;	//constructor

	enum Type {	//possible event types
		Closed
	};

	Type type;	//event type

};

extern Signal<GameEvent> eventSender;	//main game event signal  
#endif // !SNAKE_GAME_EVENT_H
