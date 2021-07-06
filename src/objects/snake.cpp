//
// Created by Wiktor on 05.07.2021.
//

#include "snake.h"
#include <systems/assetManager.h>
#include <iostream>

void Snake::draw(sf::RenderTarget& target, sf::RenderStates states) const {
    for(auto& t : tail_)
        target.draw(*t.sprite, states);
    target.draw(headSprite_, states);
}

void Snake::update(const sf::Time& time) {
    deltaTime_ += time;
    std::cout << "updated deltaTime" <<"\n";
    if(sf::Keyboard::isKeyPressed(sf::Keyboard::W)){
        dirKeyboard_ = Up;
    }
    else if(sf::Keyboard::isKeyPressed(sf::Keyboard::S)){
        dirKeyboard_ = Down;
    }
    else if(sf::Keyboard::isKeyPressed(sf::Keyboard::A)){
        dirKeyboard_ = Left;
    }
    else if(sf::Keyboard::isKeyPressed(sf::Keyboard::D)){
        dirKeyboard_ = Right;
    }
    std::cout << "changed dir keyboard" << "\n";

    std::cout << pos_.x << " " << pos_.y <<  "\n";
    sf::Vector2u nextPos_(pos_.x + dx[dir_], pos_.y + dy[dir_]);
    std::cout << nextPos_.x << " " << nextPos_.y << "\n";
    std::cout << dx[dir_] << "  " << dy[dir_] << "\n";

    std::cout << "set new nextPos" << "\n";
    while(deltaTime_ >= timeToPassField_){
        std::cout << "checked if on grid field" << "\n";
        if((((dir_ == Right || dir_ == Left) && (dirKeyboard_ != Right && dirKeyboard_ != Left)) || ((dir_ == Up || dir_ == Down) && (dirKeyboard_ != Up && dirKeyboard_ != Down))) && dirKeyboard_ != None){
            dir_ = dirKeyboard_;
            dirKeyboard_ = None;

            if(dir_ == Right){
                headSprite_ = AssetManager::get().head_right;
            }
            else if(dir_ == Left){
                headSprite_ = AssetManager::get().head_left;
            }
            else if(dir_ == Up){
                headSprite_ = AssetManager::get().head_up;
            }
            else if(dir_ == Down){
                headSprite_ = AssetManager::get().head_down;
            }
        }
        std::cout << "updated dir and sprite" << "\n";

        if(map_.getField(nextPos_).isCanPass()){
            std::cout << "checked whether canPass to this field" << "\n";

            std::cout << pos_.x << " " << pos_.y << "  " << nextPos_.x << " " << nextPos_.y << "\n";
            std::cout << dx[dir_] << " " << dy[dir_] << "\n";
            pos_ = nextPos_;
            nextPos_ = sf::Vector2u(pos_.x + dx[dir_], pos_.y + dy[dir_]);
            std::cout << "updated pos and nextPos" << "\n";
            std::cout << pos_.x << " " << pos_.y << "  " << nextPos_.x << " " << nextPos_.y << "\n";
        }
        deltaTime_ -= timeToPassField_;
        std::cout << "decreased deltaTime" << "\n";
    }

    if(map_.getField(nextPos_).isCanPass()){
        std::cout << "checked whether can move to the next field" << "\n";
        double change = 12 * deltaTime_.asSeconds() / timeToPassField_.asSeconds();
        headSprite_.setPosition(24 * pos_.x + dx[dir_] * change,
                                24 * pos_.y + dy[dir_] * change);
        std::cout << "moved a step to the next field" << "\n";
    }
    else{
        std::cout << "game over" << "\n";
        GameEvent event;
        event.type = GameEvent::GameOver;
        eventSender.notify(event);
        //debug
        active_ = false;
        //debug
    }
}

void Snake::onNotify(const GameEvent& event) {

}

Snake::Snake(sf::Sprite& sprite, Map& map) : headSprite_(sprite), map_(map){
    dir_ = Right;
    dirKeyboard_ = None;
    pos_ = sf::Vector2u(20, 20);
    deltaTime_ = sf::Time::Zero;
    timeToPassField_ = sf::milliseconds(200);
    tailLength_ = 2;
    for(unsigned i = 0; i < tailLength_; i++){
        tail_.push_back(Component());
    }
    for(auto& t : tail_){
        t.dir = dir_;
        t.nextPos = pos_;
        t.sprite = &AssetManager::get().tail_right;
        t.sprite->setPosition(pos_.x * 24, pos_.y * 24);
    }

    sprite.setPosition(pos_.x * 24, pos_.y * 24);

    eventSender.addListener(this);
}

Snake::~Snake() {
    eventSender.removeListener(this);
}
