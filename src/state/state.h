#ifndef SNAKE_STATE_H
#define SNAKE_STATE_H

class Machine;

class State {
    private:
        bool active_;
    protected:
        Machine& fsm;
    public:
        bool isActive() const;
        void setActive(bool active);

        State(Machine& machine);
        virtual ~State() = default;
};

#endif // !SNAKE_STATE_H