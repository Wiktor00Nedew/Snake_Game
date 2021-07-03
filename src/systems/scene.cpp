//
// Created by Wiktor on 03.07.2021.
//

#include "scene.h"
#include "inputHandler.h"
#include <events/gameEvent.h>

void Scene::onNotify(const sf::Event& event) {
    if(isActive()){
        if(event.type == sf::Event::Closed){
            GameEvent gameEvent;
            gameEvent.type = GameEvent::Closed;
            eventSender.notify(gameEvent);
        }
    }
}

Scene::Scene(Machine &machine) : State(machine) {
    InputHandler::get().addListener(this);
}

Scene::~Scene() {
    InputHandler::get().removeListener(this);
    for(auto& o : objects_){
        delete o;
    }
}

void Scene::addObject(GameObject *object) {
    objects_.push_back(object);
}

void Scene::update(const sf::Time& time) {
    for(auto o : objects_){
        if(o->isExisting() && o->isActive()){
            o->update(time);
        }
    }
    refresh();
}

void Scene::draw(sf::RenderTarget& target, sf::RenderStates states) const {
    for(auto o : objects_){
        if(o->isVisible() && o->isExisting()){
            target.draw(*o, states);
        }
    }
}

void Scene::refresh() {
    for(auto o : objects_){
        if(!o->isExisting()){
            std::swap(o, objects_.back());
            delete objects_.back();
            objects_.pop_back();
        }
    }
}


