//
// Created by Wiktor on 04.07.2021.
//

#include "assetManager.h"

void AssetManager::load() {
    pathImage.loadFromFile("../assets/path.png");
    wallImage.loadFromFile("../assets/wall.png");

    pathTexture.loadFromImage(pathImage);
    wallTexture.loadFromImage(wallImage);

    path.setTexture(pathTexture);
    wall.setTexture(wallTexture);
}