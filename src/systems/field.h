//
// Created by Wiktor on 04.07.2021.
//

#ifndef SNAKE_FIELD_H
#define SNAKE_FIELD_H
#include <SFML/Graphics.hpp>

class Field {
public:
    enum Type{
        Path,
        Wall
    };

    Field::Type getType() const;
    void setType(Field::Type type);

    bool isCanPass() const;

    sf::Sprite* getSprite() const;
    void setSprite(sf::Sprite* sprite);

    Field();
    Field(Field::Type type);
private:
    sf::Sprite* sprite_;
    bool canPass_;
    Type type_;
};


#endif //SNAKE_FIELD_H
