all: test

test: sum.o main.o
	gcc -o test sum.o main.o

sum.o: sum.c sum.h
	gcc -c -o sum.o sum.c

main.o: main.c sum.h
	gcc -c -o main.o main.c

clean:
	rm *.o test
