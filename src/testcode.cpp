#include "testcode.h"

void NameTag::setFirstN(std::string &first) {
	firstN = first;
}

void NameTag::setLastN(std::string &last) {
	lastN = last;
}

std::string NameTag::getFirstN() const {
	return firstN;
}

std::string NameTag::getLastN() const {
	return lastN;
}

void NameTag::operator=(const NameTag &right) {
	firstN = right.firstN;
	lastN = right.lastN;
}
