//
// Created by Wiktor on 08.07.2021.
//

#ifndef SNAKE_BUTTON_H
#define SNAKE_BUTTON_H

#include "gameObject.h"
#include <systems/listener.h>

class Button : public GameObject, public Listener<sf::Event>{
public:
    void update(const sf::Time& time) override;

    void draw(sf::RenderTarget& target, sf::RenderStates states) const override;

    void onNotify(const sf::Event& event) override;
};


#endif //SNAKE_BUTTON_H
