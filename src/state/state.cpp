#include "state.h"

State::State(Machine& machine) : fsm(machine) {
	setAcitve(false);
}

bool State::isActive() {
	return active_;
}

void State::setAcitve(bool active) {
	active_ = active;
}