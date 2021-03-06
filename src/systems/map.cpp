//
// Created by Wiktor on 04.07.2021.
//

#include "map.h"
#include <fstream>
#include <string>
#include "assetManager.h"
#include <iostream>

Field& Map::getField(sf::Vector2u pos) {
    return board_[pos.x][pos.y];
}

Field& Map::getFiled(const unsigned int x, const unsigned int y) {
    return board_[x][y];
}

void Map::draw(sf::RenderTarget& target, sf::RenderStates states) const {
    for (auto& vec : board_) {
        for (auto& tile : vec) {
            target.draw(*tile.getSprite(), states);
            states.transform.translate(0, 24);
        }
        states.transform.translate(24, -24 * 45);
    }
    states.transform.translate(-24 * 80, 0);
}


Map::Map() {
    std::ifstream mapFile("../assets/map.txt");
    std::string line;
    board_.resize(80, std::vector<Field>(45));
    for(unsigned y = 0; y < 45; y++){
        mapFile >> line;
        for(unsigned x = 0; x < 80; x++){
            char c = line[x];
            switch (c) {
                case 'P':
                    board_[x][y].setType(Field::Path);
                    board_[x][y].setSprite(&AssetManager::get().path);
                    break;
                case 'W':
                    board_[x][y].setType(Field::Wall);
                    board_[x][y].setSprite(&AssetManager::get().wall);
                    break;
            }
        }
    }
}
