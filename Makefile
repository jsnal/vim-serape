CXX = clang++
CXXFLAGS = -Wall -g -std=c++17
NAME = all

SOURCES = \
          src/ColorLoader.cpp \

OBJECTS = ${SOURCES:.cpp=.o}

default: all

$(NAME): src/main.o $(OBJECTS)
	$(CXX) $(CXXFLAGS) src/main.o $(OBJECTS) -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(NAME) $(OBJECTS) src/main.o
