##########################################################################################
## THIS IS A TEST PROJECT								##
##########################################################################################
.SUFFIXES:
.SUFFIXES: .o .h .cpp
	
vpath %.cpp src
vpath %.h hdr
vpath %.o out

%.h : %.cpp

##########################################################################################
## BUILD TASKS										##
##########################################################################################

HDIR		:= hdr
SRCS		:= src
ODIR		:= obj/

EXE		:= a
OBJS		:= main.o mainhdr.o testcode.o

CPP		:= g++
CPPFLAGS	:= -I$(HDIR) -c -g -Wall -std=c++17

## BUILD DIRECTIVE:
all: $(EXE)

## PROBLEM: Doesn't seem to work when prefixed with the output dir:
#$(EXE): $(ODIR)/$(OBJS)
$(EXE): $(ODIR)/$(OBJS)
	$(CPP) -o %@ $(<D)%^
#	$(CPP) -o %@ %^

## This compiles the objects into the output dir just fine.
$(ODIR)%.o: %.cpp
	$(CPP) $(CPPFLAGS) $< -o $@
#	$(CPP) $(CPPFLAGS) $< -o $(ODIR)/$@

##########################################################################################
## CLEAN TASK										##
##########################################################################################
.PHONY: clean
clean:
	rm -r $(EXE) $(ODIR)/*.o
