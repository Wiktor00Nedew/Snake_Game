#ifndef SINGLETON_H
#define SINGLETON_H

template<typename T>
class Singleton {
public:
	static T& get() {	//returns instance of a singleton
		static T instance;
		return instance;
	}

	T& operator = (Singleton const&) = delete;	//prevents initializing

	Singleton(Singleton const&) = delete;	//prevents initializing
protected:
	Singleton() {}	//constructor
};
#endif // !SINGLETON_H
