#ifndef LISTENER_H
#define LISTENER_H

template<typename T>
class Listener {
public:
	virtual void onNotify(const T& event) = 0;	//react to events
	virtual ~Listener() = default;	//destructor
};
#endif // !LISTENER_H
