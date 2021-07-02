#ifndef SNAKE_STATE_H
#define SNAKE_STATE_H

#include "machine.h"

class Machine;

class State {
    public:
        bool isActive();
        void setActive(bool active);

        State(Machine& machine);
        virtual ~State() = default;
    private:
        bool active_;
    protected:
        Machine& fsm;
};

#endif // !SNAKE_STATE_H