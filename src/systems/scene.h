//
// Created by Wiktor on 03.07.2021.
//

#ifndef SNAKE_SCENE_H
#define SNAKE_SCENE_H

#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include <objects/gameObject.h>
#include "listener.h"
#include <vector>
#include <state/state.h>

class Scene : public State, public sf::Drawable, public Listener<sf::Event>{
public:
    void update(const sf::Time& time);
    void addObject(GameObject* object);

    void onNotify(const sf::Event& event) override;

    Scene(Machine& machine);
    ~Scene();

    enum Type{
        Game,
        Menu,
        Pause,
        Settings,
        Advancements
    };

    Type type;

protected:
    std::vector<GameObject*> objects_;
    void draw(sf::RenderTarget& target, sf::RenderStates states) const override;
    void refresh();
};


#endif //SNAKE_SCENE_H
