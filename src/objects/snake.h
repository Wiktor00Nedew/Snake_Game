//
// Created by Wiktor on 05.07.2021.
//

#ifndef SNAKE_SNAKE_H
#define SNAKE_SNAKE_H
#include "gameObject.h"
#include <events/gameEvent.h>
#include <systems/listener.h>
#include <systems/map.h>

class Snake : public GameObject, public Listener<GameEvent>{
public:

    void draw(sf::RenderTarget& target, sf::RenderStates states) const override;

    void update(const sf::Time& time) override;

    void onNotify(const GameEvent& event);

    Snake(Map& map);
    ~Snake();

private:
    Direction dir_;
    Direction dirKeyboard_;

    Map& map_;

    sf::Vector2u pos_;
    sf::Time deltaTime_;
    sf::Time timeToPassField_;

    unsigned tailLength_;
    sf::Sprite* headSprite_;

    struct Component{
        sf::Sprite sprite;
        Direction dir;
        //sf::Vector2u nextPos;
        sf::Vector2u pos;
    };

    std::vector<Component> tail_;
};


#endif //SNAKE_SNAKE_H
