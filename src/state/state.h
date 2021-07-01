#pragma once
#include "machine.h"

class State {
public:
	bool isActive();
	void setAcitve(bool active);

	State(Machine& fsm);
	virtual ~State() = default;
private:
	bool active;
protected:
	Machine& fsm;
};