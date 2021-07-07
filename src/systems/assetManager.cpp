//
// Created by Wiktor on 04.07.2021.
//

#include "assetManager.h"

void AssetManager::load() {
    pathImage.loadFromFile("../assets/path.png");
    wallImage.loadFromFile("../assets/wall.png");

    head_downImage.loadFromFile("../assets/head_down.png");
    head_upImage.loadFromFile("../assets/head_top.png");
    head_rightImage.loadFromFile("../assets/head_right.png");
    head_leftImage.loadFromFile("../assets/head_left.png");

    tail_downImage.loadFromFile("../assets/tail_down.png");
    tail_leftImage.loadFromFile("../assets/tail_left.png");
    tail_upImage.loadFromFile("../assets/tail_top.png");
    tail_rightImage.loadFromFile("../assets/tail_right.png");

    pointImage.loadFromFile("../assets/point.png");

    pathTexture.loadFromImage(pathImage);
    wallTexture.loadFromImage(wallImage);

    head_downTexture.loadFromImage(head_downImage);
    head_upTexture.loadFromImage(head_upImage);
    head_rightTexture.loadFromImage(head_rightImage);
    head_leftTexture.loadFromImage(head_leftImage);

    tail_downTexture.loadFromImage(tail_downImage);
    tail_leftTexture.loadFromImage(tail_leftImage);
    tail_rightTexture.loadFromImage(tail_rightImage);
    tail_upTexture.loadFromImage(tail_upImage);

    pointTexture.loadFromImage(pointImage);

    path.setTexture(pathTexture);
    wall.setTexture(wallTexture);

    tail_up.setTexture(tail_upTexture);
    tail_right.setTexture(tail_rightTexture);
    tail_down.setTexture(tail_downTexture);
    tail_left.setTexture(tail_leftTexture);

    head_left.setTexture(head_leftTexture);
    head_right.setTexture(head_rightTexture);
    head_up.setTexture(head_upTexture);
    head_down.setTexture(head_downTexture);

    point.setTexture(pointTexture);

    font.loadFromFile("../assets/Pixeled.ttf");
}