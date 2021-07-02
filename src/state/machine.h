#ifndef MACHINE_H
#define MACHINE_H


#include "../events/stateEvent.h"
#include "systems/signal.h"
#include <stack>

class State;

class Machine : Signal<StateEvent>, Listener<StateEvent> {
private:
	std::stack<State*> states_;
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

#endif // !MACHINE_H