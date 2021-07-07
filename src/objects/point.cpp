//
// Created by Wiktor on 07.07.2021.
//

#include <systems/assetManager.h>
#include <iostream>
#include "point.h"

Point::Point(Map& map) : map_(map){
    sprite_ = &AssetManager::get().point;
    newPos_ = sf::Vector2u(rand() % 80, rand() % 45);
    while(!map_.getField(newPos_).isCanPass()){
        newPos_ = sf::Vector2u(rand() % 80, rand() % 45);
    }
    pos_ = newPos_;
    sprite_->setPosition(24 * pos_.x, 24 * pos_.y);
    GameEvent event1;
    event1.type = GameEvent::PointCreated;
    event1.pointCreated.pos = pos_;
    eventSender.notify(event1);
    eventSender.addListener(this);
}

Point::~Point() {
    eventSender.removeListener(this);
}

void Point::update(const sf::Time& time) {

}

void Point::draw(sf::RenderTarget& target, sf::RenderStates states) const {
    target.draw(*sprite_, states);
}

void Point::onNotify(const GameEvent& event) {
    if(event.type == GameEvent::PointEaten){
        newPos_ = sf::Vector2u(rand() % 80, rand() % 45);
        while(!map_.getField(newPos_).isCanPass()){
            newPos_ = sf::Vector2u(rand() % 80, rand() % 45);
        }
        pos_ = newPos_;
        sprite_->setPosition(24 * pos_.x, 24 * pos_.y);
        GameEvent event1;
        event1.type = GameEvent::PointCreated;
        event1.pointCreated.pos = pos_;
        eventSender.notify(event1);
    }
}

