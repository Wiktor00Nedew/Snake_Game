#pragma once
#include "../events/stateEvent.h"
#include "systems/signal.h"
#include <stack>

class Machine : Signal<StateEvent>, Listener<StateEvent> {
private:
	std::stack<State*> states;
public:
	void add(State* state);
	void remove(unsigned int count = 1);
	void replace(State* state);
	void clear();

	void onNotify(const StateEvent& event) override;

	State* getState();

	Machine();
	~Machine();
};