//
// Created by Wiktor on 07.07.2021.
//

#ifndef SNAKE_STATS_H
#define SNAKE_STATS_H

#include <SFML/Graphics.hpp>
#include <events/gameEvent.h>
#include "listener.h"

class Stats : public sf::Drawable, public Listener<GameEvent>{
public:
    Stats();
    ~Stats();

    void draw(sf::RenderTarget& target, sf::RenderStates states) const override;

    void onNotify(const GameEvent& event) override;

    void loadFromFile();

    void updateFile();

    void addPoints(unsigned points);

    void setHighScore(unsigned points);

    unsigned getHighScore();

    unsigned getPoints();

    void setPoints(unsigned points);

private:
    unsigned points_;
    unsigned highScore_;

    sf::Text pointText_;
    sf::Text highScoreText_;
};


#endif //SNAKE_STATS_H
