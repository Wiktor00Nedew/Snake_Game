#include "machine.h"
#include <iostream>

void Machine::add(State* state) {
	StateEvent event;
	event.type = StateEvent::Add;
	event.add.state = state;
	notify(event);
}

void Machine::remove(unsigned int count) {
	StateEvent event;
	event.type = StateEvent::Remove;
	event.remove.count = count;
	notify(event);
}

void Machine::clear() {
	StateEvent event;
	event.type = StateEvent::Clear;
	notify(event);
}

void Machine::replace(State* state) {
	StateEvent event;
	event.type = StateEvent::Replace;
	event.replace.state = state;
	notify(event);
}

State* Machine::getState() {
	handleEvents();
	if (states_.empty()) {
		std::cout << "Error: No states in state machine" << "\n";
		return nullptr;
	}
	return states_.top();
}

Machine::Machine() {
	addListener(this);
}

Machine::~Machine() {
	removeListener(this);
}

void Machine::onNotify(const StateEvent& event) {
	if (event.type == StateEvent::Add) {
		if (!states_.empty())
			states_.top()->setActive(false);
		states_.push(event.add.state);
		states_.top()->setActive(true);
	}
	else if (event.type == StateEvent::Remove) {
		for (int i = 0; i < event.remove.count; i++) {
			if (states_.empty())
				break;
			delete states_.top();
			states_.pop();
		}
	}
	else if (event.type == StateEvent::Replace) {
		if (states_.empty()) {
			std::cout << "Error: No states in state machine" << "\n";
			return;
		}
		delete states_.top();
		states_.pop();
		states_.push(event.replace.state);
		states_.top()->setActive(true);
	}
	else if (event.type == StateEvent::Clear) {
		while (!states_.empty()) {
			delete states_.top();
			states_.pop();
		}
	}
}