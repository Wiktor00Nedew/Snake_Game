#ifndef SNAKE_STATEEVENT_H
#define SNAKE_STATEEVENT_H

#include "state.h"

class StateEvent {
public:
    enum Type {
        Add,
        Remove,
        Replace,
        Clear
    };

    Type type;

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
};
#endif // !SNAKE_STATE_EVENT_H
