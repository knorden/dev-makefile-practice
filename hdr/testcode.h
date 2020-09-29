#ifndef TESTCODE_H
#define TESTCODE_H
#include <iostream>
#include <string>

#define SMALLCONST 25

class NameTag {
	private:
	std::string f;
	std::string l;
	public:
	NameTag(std::string first="", std::string last="");
	void setFirstN(std::string );
	void setLastN(std::string );
	
	std::string getFirstN() const;
	std::string getLastN() const;

	void operator=(const NameTag &);
};

#endif
