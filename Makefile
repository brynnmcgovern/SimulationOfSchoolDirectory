# A simple Makefile for CPSC 350
# Assumes the following directory hierarchy:
# Assignment 6
# 	src
#       include

#this Makefile goes in the src directory

#change this to the correct assignment #
EXECUTABLE := assignment6

# the source files to be built
SOURCES := main.cpp
	   Student.cpp
	   Faculty.cpp
	   Person.cpp
	   Simulation.cpp
	   Menu.cpp

#stuff you don't need to worry about
INCLUDES := -I ../include
EXT := out
CC := g++

all:
	$(CC) $(INCLUDES) $(SOURCES) -o $(EXECUTABLE).$(EXT)

realclean:
	find . -type f -name "*.o" -exec rm '{}' \;
	find . -type f -name "*.out" -exec rm '{}' \;
	find . -type f -name "*.exe" -exec rm '{}' \;

# this line required by make - don't delete
