//
// Created by Wiktor on 08.07.2021.
//

#ifndef SNAKE_BUTTON_H
#define SNAKE_BUTTON_H

#include "gameObject.h"
#include <systems/listener.h>
#include <functional>
#include <systems/soundManager.h>


class Button : public GameObject, public Listener<sf::Event>{
public:
    void update(const sf::Time& time) override;

    void draw(sf::RenderTarget& target, sf::RenderStates states) const override;

    void onNotify(const sf::Event& event) override;

    Button(std::function<void()> f, const sf::Vector2f& position, const std::string& label);
    ~Button();

private:
    enum State{
        Hover,
        Clicked,
        Default
    };

    State state_;

    std::function<void()> function_;
    sf::Text text_;

    sf::Time time_;

    SoundManager manager;
    sf::SoundBuffer clickSound;
};


#endif //SNAKE_BUTTON_H
