#ifndef SNAKE_STATEEVENT_H
#define SNAKE_STATEEVENT_H

#include "state/state.h"

class State;

class StateEvent {
    public:

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

        union {
            AddEvent add;
            ReplaceEvent replace;
            RemoveEvent remove;
        };

        Type type;
};
#endif // !SNAKE_STATE_EVENT_H
