//
// Created by Wiktor on 05.07.2021.
//

#include "snake.h"
#include <systems/assetManager.h>
#include <iostream>

void Snake::draw(sf::RenderTarget& target, sf::RenderStates states) const {
    for(auto& t : tail_)
        target.draw(*t.sprite, states);
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

        for(unsigned i = 0; i < tailLength_-1; i++){
            tail_[i].dir = tail_[i+1].dir;
        }
        tail_.back().dir = dir_;

        for(auto& t : tail_){
            if(t.dir == Left){
                t.sprite = &AssetManager::get().tail_left;
            }
            else if(t.dir == Right){
                t.sprite = &AssetManager::get().tail_right;
            }
            else if(t.dir == Up){
                t.sprite = &AssetManager::get().tail_up;
            }
            else if(t.dir == Down){
                t.sprite = &AssetManager::get().tail_down;
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
            for(unsigned i = 0; i < tailLength_-1; i++){
                tail_[i].pos = tail_[i+1].pos;
                std::cout << "Tail" << i << "Pos: " << tail_[i].pos.x << " " << tail_[i].pos.y << "\n";
                std::cout << "Tail" << i << "Dir: " << tail_[i].dir << "\n";
            }

            tail_.back().pos = pos_;
            std::cout << tail_.back().pos.x << " " << tail_.back().pos.y << "\n";
            std::cout << tail_.back().dir << "\n";
            pos_ = nextPos_;
            nextPos_ = sf::Vector2u(pos_.x + dx[dir_], pos_.y + dy[dir_]);

            std::cout << "HeadPos: " << pos_.x << " " << pos_.y << "\n";
            std::cout << "HeadDir: " << dir_ << "\n";
        }
        deltaTime_ -= timeToPassField_;
    }

    if(map_.getField(nextPos_).isCanPass()){
        double change = 24 * deltaTime_.asSeconds() / timeToPassField_.asSeconds();
        headSprite_->setPosition(24 * pos_.x + dx[dir_] * change,
                                24 * pos_.y + dy[dir_] * change);

        for(auto& t : tail_){
            t.sprite->setPosition(24 * t.pos.x + dx[t.dir] * change,
                                  24 * t.pos.y + dy[t.dir] * change);
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
    tailLength_ = 3;
    for(unsigned i = 0; i < tailLength_; i++){
        tail_.push_back(Component());
    }
    for(auto& t : tail_){
        t.dir = dir_;
        //t.nextPos = pos_;
        t.pos = pos_;
        t.sprite = &AssetManager::get().tail_right;
        t.sprite->setPosition(pos_.x * 24, pos_.y * 24);
    }

    headSprite_->setPosition(pos_.x * 24, pos_.y * 24);

    eventSender.addListener(this);
}

Snake::~Snake() {
    eventSender.removeListener(this);
}
