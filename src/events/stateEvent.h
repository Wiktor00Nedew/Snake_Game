
#ifndef STATE_EVENT_H
#define STATE_EVENT_H

#include "../state/state.h"

struct StateEvent {
	StateEvent();

	enum Type {
		Add,
		Remove,
		Replace,
		Clear,
		None
	};

	struct AddEvent {
		State* state;
	};

	struct RemoveEvent {
		unsigned int count;
	};

	struct ReplaceEvent {
		State* state;
	};

	union {
		AddEvent add;
		ReplaceEvent replace;
		RemoveEvent remove;
	};

	Type type;
};
#endif // !STATE_EVENT_H
