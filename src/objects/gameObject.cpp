#include "gameObject.h"

bool GameObject::isActive() const {
    return active_;
}

bool GameObject::isExisting() const {
    return exists_;
}

bool GameObject::isVisible() const {
    return visible_;
}

GameObject::GameObject() {
    visible_ = active_ = exists_ = true;
}

int dx[4] = {0, 0, -1, 1};
int dy[4] = {-1, 1, 0, 0};