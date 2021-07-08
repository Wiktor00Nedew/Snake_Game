//
// Created by Wiktor on 08.07.2021.
//

#include "soundManager.h"

void SoundManager::play(const sf::SoundBuffer &sound) {
    sounds_[id_].setBuffer(sound);
    sounds_[id_].play();
    id_++;
    if(id_ == 50)
        id_ = 0;
}

SoundManager::SoundManager() {
    sounds_.resize(50);
    id_ = 0;
}

SoundManager::~SoundManager() {
    for(auto& s : sounds_){
        s.stop();
    }
    sounds_.clear();
}
