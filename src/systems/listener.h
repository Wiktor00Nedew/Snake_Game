#ifndef SNAKE_LISTENER_H
#define SNAKE_LISTENER_H

template<typename T>
class Listener {
public:
	virtual void onNotify(const T& event) = 0;	//react to events
	virtual ~Listener() = default;	//destructor
};
#endif // !SNAKE_LISTENER_H
