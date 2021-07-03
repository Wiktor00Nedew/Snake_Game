#include "state.h"

bool State::isActive() const{
    return active_;
}

void State::setActive(bool active) {
    active_ = active;
}

State::State(Machine& machine) : fsm(machine) {
	setActive(false);
}


