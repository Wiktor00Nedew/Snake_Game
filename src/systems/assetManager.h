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

    sf::Image wallImage;
    sf::Image pathImage;
    sf::Texture wallTexture;
    sf::Texture pathTexture;
private:

};


#endif //SNAKE_ASSETMANAGER_H
