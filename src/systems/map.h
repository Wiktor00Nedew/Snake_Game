//
// Created by Wiktor on 04.07.2021.
//

#ifndef SNAKE_MAP_H
#define SNAKE_MAP_H
#include "field.h"
#include <vector>

class Map : public sf::Drawable{
public:
    Field& getField(sf::Vector2u pos);
    Field& getFiled(const unsigned x, const unsigned y);

    Map();

protected:
    void draw(sf::RenderTarget& target, sf::RenderStates states) const override;


private:
    std::vector<std::vector<Field>> board_;
};


#endif //SNAKE_MAP_H
