//
// Created by Wiktor on 07.07.2021.
//

#include "stats.h"
#include <fstream>
#include <iostream>
#include "assetManager.h"

Stats::Stats() {
    pointText_.setFont(AssetManager::get().font);
    highScoreText_.setFont(AssetManager::get().font);
    setHighScore(0);
    setPoints(0);
    loadFromFile();
    pointText_.setPosition(24 * 21, 24);
    highScoreText_.setPosition(24 * 44, 24);

    pointText_.setCharacterSize(36);
    highScoreText_.setCharacterSize(36);

    eventSender.addListener(this);
}

Stats::~Stats() {
    eventSender.removeListener(this);
}

void Stats::draw(sf::RenderTarget &target, sf::RenderStates states) const {
    target.draw(pointText_, states);
    target.draw(highScoreText_, states);
}

void Stats::onNotify(const GameEvent &event) {
    if(event.type == GameEvent::PointEaten){
        addPoints(1);
        if(getPoints() > getHighScore()){
            setHighScore(points_);
        }
    }
    else if(event.type == GameEvent::GameOver){
        updateFile();
    }
}

void Stats::loadFromFile() {
    std::fstream dataFile("../data/gameData.txt");
    dataFile >> highScore_;
    setHighScore(highScore_);
    dataFile.close();
}

void Stats::updateFile() {
    std::fstream dataFile("../data/gameData.txt");
    dataFile << highScore_;
    dataFile.close();
}

void Stats::addPoints(unsigned points) {
    points_ += points;
    pointText_.setString("POINTS: " + std::to_string(points_));
}

void Stats::setHighScore(unsigned points) {
    highScore_ = points;
    highScoreText_.setString("HIGHSCORE: " + std::to_string(highScore_));
}

unsigned Stats::getHighScore() {
    return highScore_;
}

unsigned Stats::getPoints() {
    return points_;
}

void Stats::setPoints(unsigned points) {
    points_ = points;
    pointText_.setString("POINTS: " + std::to_string(points_));
}
