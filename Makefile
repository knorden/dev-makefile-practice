##########################################################################################
## THIS IS A TEST PROJECT								##
##########################################################################################
#.SUFFIXES:
#.SUFFIXES: .h .cpp

vpath %.cpp src
vpath %.h hdr

#%.h : %.cpp
##########################################################################################
## BUILD TASKS										##
##########################################################################################
HDIR		:= hdr
#SRCS		:= src
ODIR		:= obj

EXET		:= a
OBJS		:= main.o mainhdr.o testcode.o
OSRC		:= $(addprefix $(ODIR)/, $(OBJS))

CXX		:= g++
CXXFLAGS	:= -I$(HDIR) -g -Wall -std=c++17

## BUILD DIRECTIVE:
all: $(EXET)

$(EXET): $(OSRC)
	$(CXX) $(CXXFLAGS) $^ -o $@

$(ODIR)/%.o: %.cpp
	if [ -d "$(ODIR)" ]; then \
		if [ -L "$(ODIR)" ]; then \
			rm "$(ODIR)" && mkdir "$(ODIR)"; \
		fi; \
		printf "\033c" && echo "$(ODIR) dir exists."; \
		else mkdir "$(ODIR)"; \
	fi
	$(CXX) -c $(CXXFLAGS) $^ -o $@


##########################################################################################
## CLEAN TASK										##
##########################################################################################
.PHONY: clean
clean:
	rm -r $(EXET) $(ODIR)
