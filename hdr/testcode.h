#ifndef TESTCODE_H
#define TESTCODE_H
#include <iostream>
#include <string>

#define SMALLCONST 25

class NameTag {
	private:
	std::string firstN;
	std::string lastN;
	public:
	NameTag(std::string firstN="", std::string lastN="");
	void setFirstN(std::string &);
	void setLastN(std::string &);
	
	std::string getFirstN() const;
	std::string getLastN() const;

	void operator=(const NameTag &);
};

#endif
