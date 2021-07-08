//
// Created by Wiktor on 07.07.2021.
//

#ifndef SNAKE_POINT_H
#define SNAKE_POINT_H

#include <systems/map.h>
#include <events/gameEvent.h>
#include "gameObject.h"
#include <systems/soundManager.h>

class Point : public GameObject, public Listener<GameEvent>{
private:
    Map& map_;
    sf::Sprite* sprite_;

    sf::Vector2u pos_;

    sf::Vector2u newPos_;

    SoundManager manager;
    sf::SoundBuffer collectSound;

public:
    Point(Map& map);
    ~Point();

    void update(const sf::Time& time) override;

    void draw(sf::RenderTarget& target, sf::RenderStates states) const override;

    void onNotify(const GameEvent& event) override;
};


#endif //SNAKE_POINT_H
