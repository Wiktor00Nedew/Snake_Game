//
// Created by Wiktor on 08.07.2021.
//

#include "button.h"
#include <systems/assetManager.h>
#include <systems/inputHandler.h>

void Button::update(const sf::Time& time) {
    if(state_ == Clicked){
        time_ += time;
        text_.setFillColor(sf::Color::Black);
        if(time_ >= sf::milliseconds(350)){
            manager.play(clickSound);
            state_ = Default;

        }
    }
    sf::Vector2i pos = sf::Mouse::getPosition();
    if(text_.getGlobalBounds().contains(pos.x, pos.y)){
        if(state_ == Default){
            text_.setFillColor(sf::Color(127, 127, 127));
            state_ = Hover;
        }
    }
    else{
        if(state_ == Hover){
            text_.setFillColor(sf::Color::White);
            state_ = Default;
        }
    }
    if(state_ == Default)
        text_.setFillColor(sf::Color::White);
}

void Button::draw(sf::RenderTarget& target, sf::RenderStates states) const {
    target.draw(text_, states);
}

void Button::onNotify(const sf::Event& event) {
    if(state_ == Hover){
        if(event.type == sf::Event::MouseButtonPressed){
            if(event.mouseButton.button == sf::Mouse::Left){
                if(text_.getGlobalBounds().contains(event.mouseButton.x, event.mouseButton.y)){
                    manager.play(clickSound);
                    function_();
                    state_ = Clicked;
                    time_ = sf::milliseconds(0);
                    text_.setFillColor(sf::Color(63, 63, 63));
                }
            }
        }
    }
}

Button::Button(std::function<void()> f, const sf::Vector2f &position, const std::string &label) : function_(f){
    text_.setFont(AssetManager::get().font);
    text_.setString(label);
    text_.setFillColor(sf::Color::White);
    text_.setCharacterSize(36);
    text_.setPosition(position.x - text_.getLocalBounds().width / 2, position.y - text_.getLocalBounds().height / 2);
    state_ = Default;
    InputHandler::get().addListener(this);
}

Button::~Button() {
    InputHandler::get().removeListener(this);
}
