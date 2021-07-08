//
// Created by Wiktor on 08.07.2021.
//

#ifndef SNAKE_SOUNDMANAGER_H
#define SNAKE_SOUNDMANAGER_H
#include <SFML/Audio.hpp>

class SoundManager {
private:
    int id_;
    std::vector<sf::Sound> sounds_;
public:
    void play(const sf::SoundBuffer& sound);

    SoundManager();
    ~SoundManager();
};


#endif //SNAKE_SOUNDMANAGER_H
