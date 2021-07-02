#ifndef GAME_EVENT_H
#define GAME_EVENT_H

#include "../systems/signal.h"

struct GameEvent {
	GameEvent();	//constructor

	enum Type {	//possible event types
		GameOver
	};

	Type type;	//event type

};

extern Signal<GameEvent> eventSender;	//main game event signal  
#endif // !GAME_EVENT_H
