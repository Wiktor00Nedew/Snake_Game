#include "state.h"

State::State(Machine& machine) : fsm(machine) {
	setActive(false);
}

bool State::isActive() {
	return active_;
}

void State::setActive(bool active) {
	active_ = active;
}