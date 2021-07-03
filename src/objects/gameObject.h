#ifndef SNAKE_GAMEOBJECT_H
#define SNAKE_GAMEOBJECT_H

#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>

class GameObject : public sf::Drawable, public sf::Transformable {
protected:
    bool active_;
    bool visible_;
    bool exists_;

public:
    enum Direction{
        Up,
        Down,
        Left,
        Right,
        None
    };

    bool isVisible() const;
    bool isActive() const;
    bool isExisting() const;

    virtual void update(const sf::Time& time) = 0;

    GameObject();
    virtual ~GameObject() = default;
};
#endif // !SNAKE_GAME_OBJECT_H
