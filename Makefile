##########################################################################################
## THIS IS A TEST PROJECT								##
##########################################################################################
.SUFFIXES:
.SUFFIXES: .h .cpp
	
vpath %.cpp src
vpath %.h hdr

%.h : %.cpp

##########################################################################################
## BUILD TASKS										##
##########################################################################################

HDIR		:= hdr
SRCS		:= src
ODIR		:= out

EXE		:= a
OBJS		:= main.o mainhdr.o testcode.o

CPP		:= g++
CPPFLAGS	:= -I$(HDIR) -g -Wall -std=c++17

## BUILD DIRECTIVE:
all: $(EXE)

## PROBLEM: Doesn't seem to work when prefixed with the output dir:
#$(EXE): $(ODIR)/$(OBJS)
$(EXE): $(OBJS)
#	$(CPP) -o %@ $(+D)%^
	$(CPP) -o %@ %^

## This compiles the objects into the output dir just fine.
%.o: %.cpp
	$(CPP) -c $< $(CPPFLAGS) -o $(ODIR)/$@

##########################################################################################
## CLEAN TASK										##
##########################################################################################
.PHONY: clean
clean:
	rm -r $(EXE) $(ODIR)/*.o

