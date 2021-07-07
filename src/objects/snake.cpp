//
// Created by Wiktor on 05.07.2021.
//

#include "snake.h"
#include <systems/assetManager.h>
#include <iostream>

void Snake::draw(sf::RenderTarget& target, sf::RenderStates states) const {
    for(unsigned i = 0; i < tailLength_; i++)
        target.draw(tail_[i].sprite, states);
    target.draw(*headSprite_, states);
}

void Snake::update(const sf::Time& time) {

    deltaTime_ += time;

    if(sf::Keyboard::isKeyPressed(sf::Keyboard::W)){
        dirKeyboard_ = Up;
    }
    else if(sf::Keyboard::isKeyPressed(sf::Keyboard::S)){
        dirKeyboard_ = Down;
    }
    else if(sf::Keyboard::isKeyPressed(sf::Keyboard::D)){
        dirKeyboard_ = Right;
    }
    else if(sf::Keyboard::isKeyPressed(sf::Keyboard::A)){
        dirKeyboard_ = Left;
    }

    sf::Vector2u nextPos_(pos_.x + dx[dir_], pos_.y + dy[dir_]);

    while(deltaTime_ >= timeToPassField_){

        /*if(sf::Keyboard::isKeyPressed(sf::Keyboard::L)){
            tailLength_++;
            tail_.push_back(Component());
        }*/

        for(unsigned i = tailLength_-1; i > 0; i--){
            tail_[i].dir = tail_[i-1].dir;
        }
        tail_.front().dir = dir_;

        for(unsigned i = 0; i < tailLength_; i++){
            if(tail_[i].dir == Left){
                tail_[i].sprite = AssetManager::get().tail_left;
            }
            else if(tail_[i].dir == Right){
                tail_[i].sprite = AssetManager::get().tail_right;
            }
            else if(tail_[i].dir == Up){
                tail_[i].sprite = AssetManager::get().tail_up;
            }
            else if(tail_[i].dir == Down){
                tail_[i].sprite = AssetManager::get().tail_down;
            }
        }

        if((((dir_ == Right || dir_ == Left) && (dirKeyboard_ != Right && dirKeyboard_ != Left)) || ((dir_ == Up || dir_ == Down) && (dirKeyboard_ != Up && dirKeyboard_ != Down))) && dirKeyboard_ != None){
            dir_ = dirKeyboard_;
            dirKeyboard_ = None;

            if(dir_ == Left){
                headSprite_ = &AssetManager::get().head_left;
            }
            else if(dir_ == Right){
                headSprite_ = &AssetManager::get().head_right;
            }
            else if(dir_ == Up){
                headSprite_ = &AssetManager::get().head_up;
            }
            else if(dir_ == Down){
                headSprite_ = &AssetManager::get().head_down;
            }

        }

        if(map_.getField(nextPos_).isCanPass()){
            for(unsigned i = tailLength_-1; i > 0; i--){
                tail_[i].pos = tail_[i-1].pos;
                //std::cout << "Tail" << i << "Pos: " << tail_[i].pos.x << " " << tail_[i].pos.y << "\n";
                //std::cout << "Tail" << i << "Dir: " << tail_[i].dir << "\n";
            }

            tail_.front().pos = pos_;
            //std::cout << tail_.back().pos.x << " " << tail_.back().pos.y << "\n";
            //std::cout << tail_.back().dir << "\n";
            pos_ = nextPos_;
            nextPos_ = sf::Vector2u(pos_.x + dx[dir_], pos_.y + dy[dir_]);

            //std::cout << "HeadPos: " << pos_.x << " " << pos_.y << "\n";
            //std::cout << "HeadDir: " << dir_ << "\n";
        }
        deltaTime_ -= timeToPassField_;
    }

    if(map_.getField(nextPos_).isCanPass()){
        double change = 24 * deltaTime_.asSeconds() / timeToPassField_.asSeconds();
        headSprite_->setPosition(24 * pos_.x + dx[dir_] * change,
                                24 * pos_.y + dy[dir_] * change);

        for(unsigned i = 0; i < tailLength_; i++){
            tail_[i].sprite.setPosition(24 * tail_[i].pos.x + dx[tail_[i].dir] * change,
                                  24 * tail_[i].pos.y + dy[tail_[i].dir] * change);
        }

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

Snake::Snake(Map& map) : map_(map){
    headSprite_ = &AssetManager::get().head_right;
    dir_ = Right;
    dirKeyboard_ = None;
    pos_ = sf::Vector2u(20, 20);
    deltaTime_ = sf::Time::Zero;
    timeToPassField_ = sf::milliseconds(200);
    tailLength_ = 2;
    for(unsigned i = 0; i < tailLength_; i++){
        tail_.push_back(Component());
    }
    for(unsigned i = 0; i < tailLength_; i++){
        tail_[i].dir = dir_;
        //t.nextPos = pos_;
        tail_[i].pos = pos_;
        tail_[i].sprite = AssetManager::get().tail_right;
        tail_[i].sprite.setPosition(pos_.x * 24, pos_.y * 24);
    }

    headSprite_->setPosition(pos_.x * 24, pos_.y * 24);

    eventSender.addListener(this);
}

Snake::~Snake() {
    eventSender.removeListener(this);
}
