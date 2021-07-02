#pragma once
#include "machine.h"

class State {
public:
	bool isActive();
	void setAcitve(bool active);

	State(Machine& machine);
	virtual ~State() = default;
private:
	bool active_;
protected:
	Machine& fsm;
};