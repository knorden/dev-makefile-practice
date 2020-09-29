#include "testcode.h"

NameTag::NameTag(std::string first, std::string last) {
	f = first;
	l = last;
}

void NameTag::setFirstN(std::string first) {
	f = first;
}

void NameTag::setLastN(std::string last) {
	l = last;
}

std::string NameTag::getFirstN() const {
	return f;
}

std::string NameTag::getLastN() const {
	return l;
}

void NameTag::operator=(const NameTag &right) {
	f = right.f;
	l = right.l;
}
