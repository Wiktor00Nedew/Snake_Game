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