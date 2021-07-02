#ifndef SNAKE_MACHINE_H
#define SNAKE_MACHINE_H

#include "events/stateEvent.h"
#include "systems/signal.h"
#include "state.h"
#include <stack>

class StateEvent;
class State;

class Machine : public Signal<StateEvent>, public Listener<StateEvent> {
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

#endif // !SNAKE_MACHINE_H