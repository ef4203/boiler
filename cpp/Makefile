CXXFLAGS := -std=c++11 -pedantic -Wall -Wextra -Wfloat-equal -Wshadow
CXX = g++

all: bin/ example.exe
example.exe: main.o a.o
	$(CXX) $(CXXFLAGS) bin/main.o bin/a.o -o bin/example.exe
main.o:
	$(CXX) $(CXXFLAGS) -c src/main.cpp -o bin/main.o
a.o:
	$(CXX) $(CXXFLAGS) -c src/a.cpp -o bin/a.o
bin/:
	mkdir -p bin
clean:
	@rm -rf bin
