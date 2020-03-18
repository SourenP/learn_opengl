CXX = clang++
CXXFLAGS = -std=c++11 -stdlib=libc++
LDFLAGS = -lstdc++
CFLAGS = -Wall -Weffc++ -Werror -pedantic -g

ADD_LDFLAGS = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lsfml-network -lpthread -framework OpenGL
SRC_DIR = ./
SRC_LIST = $(wildcard $(SRC_DIR)/*.cpp)
OBJ_LIST = $(SRC_LIST:.cpp=.o)

all: main

main: $(OBJ_LIST)
	$(CXX) $(CFLAG) -o $@ $^ $(LDFLAGS) $(ADD_LDFLAGS)

.PHONY: clean
clean:
	rm -rf *.o main
