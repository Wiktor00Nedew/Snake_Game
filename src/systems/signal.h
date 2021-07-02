#ifndef SNAKE_SIGNAL_H
#define SNAKE_SIGNAL_H

#include <queue>
#include <set>
#include "listener.h"

template<typename T>
class Signal {
private:
	std::queue<T> events_;	//queue of events to process
	std::set<Listener<T>*> listeners_;	//set of listeners

public:
	void addListener(Listener<T>* listener) {	//adds a new listener
		listeners_.insert(listener);
	}

	void removeListener(Listener<T>* listener) {	//removes one listener
		listeners_.erase(listeners_.find(listener));
	}

	void notify(const T& event) {	//adds new event
		events_.push(event);
	}

	void handleEvents() {	//notifies listeners about events
		T* event;
		while (!events_.empty()) {
			event = &events_.front();
			for (auto l : listeners_) {
				l->onNotify(*event);
			}
			events_.pop();
		}
	}
};
#endif // !SNAKE_SIGNAL_H
