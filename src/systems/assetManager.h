//
// Created by Wiktor on 04.07.2021.
//

#ifndef SNAKE_ASSETMANAGER_H
#define SNAKE_ASSETMANAGER_H
#include "singleton.h"
#include <SFML/Graphics.hpp>

class AssetManager : public Singleton<AssetManager>{
public:
    void load();

    sf::Sprite wall;
    sf::Sprite path;

    sf::Sprite head_up;
    sf::Sprite head_right;
    sf::Sprite head_left;
    sf::Sprite head_down;

    sf::Sprite tail_up;
    sf::Sprite tail_right;
    sf::Sprite tail_left;
    sf::Sprite tail_down;

private:
    sf::Image wallImage;
    sf::Image pathImage;
    sf::Texture wallTexture;
    sf::Texture pathTexture;

    sf::Texture head_upTexture;
    sf::Texture head_rightTexture;
    sf::Texture head_leftTexture;
    sf::Texture head_downTexture;

    sf::Texture tail_upTexture;
    sf::Texture tail_rightTexture;
    sf::Texture tail_leftTexture;
    sf::Texture tail_downTexture;

    sf::Image head_upImage;
    sf::Image head_rightImage;
    sf::Image head_leftImage;
    sf::Image head_downImage;

    sf::Image tail_upImage;
    sf::Image tail_rightImage;
    sf::Image tail_leftImage;
    sf::Image tail_downImage;
};


#endif //SNAKE_ASSETMANAGER_H
