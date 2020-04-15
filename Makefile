all: helloworld.o
	$(CC) $(LDFLAGS) src/helloworld.o -o src/helloworld

helloworld.o: helloworld.c
	$(CC) $(CFLAGS) -c src/helloworld.c

clean:
	rm *.o src/helloworld

install: all
