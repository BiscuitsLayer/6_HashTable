all:	b0 r

o:	
	rm callgrind*
	valgrind --tool=callgrind ./a.out
	kcachegrind
b0:
	g++ -ggdb2 main.cpp -O0
b1:
	g++ -ggdb2 main.cpp -O1
b3:
	g++ -ggdb2 main.cpp -O3
r:
	./a.out
