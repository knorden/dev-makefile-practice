#include "mainhdr.h"

void testFunc() {
	std::cout << "THIS IS A TEST STRING!\n";
	std::cout << "BIGCONST = " << BIGCONST << std::endl;
	std::cout << "SMALLCONST = " << SMALLCONST << std::endl;

	NameTag someDude("Good", "Dude");
	
	std::cout << someDude.getFirstN() << " " << someDude.getLastN() << std::endl;
}
