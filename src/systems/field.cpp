//
// Created by Wiktor on 04.07.2021.
//

#include "field.h"

Field::Type Field::getType() const {
    return type_;
}

void Field::setType(Field::Type type) {
    type_ = type;
    canPass_ = (type != Field::Wall);
}

bool Field::isCanPass() const {
    return canPass_;
}

sf::Sprite* Field::getSprite() const {
    return sprite_;
}

void Field::setSprite(sf::Sprite* sprite) {
    sprite_ = sprite;
}

Field::Field() {
    type_ = Field::Path;
    canPass_ = true;
}

Field::Field(Field::Type type) {
    type_ = type;
    canPass_  = (type != Field::Wall);
}
