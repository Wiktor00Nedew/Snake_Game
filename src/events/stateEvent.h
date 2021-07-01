#pragma once
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

	union{
		AddEvent add;
		ReplaceEvent replace;
		RemoveEvent remove;
	};

	Type type;
};