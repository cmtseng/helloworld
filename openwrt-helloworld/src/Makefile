all: helloworld.o
	$(CC) $(LDFLAGS) helloworld.o -o openwrt-helloworld

helloworld.o: helloworld.c
	$(CC) $(CFLAGS) -c helloworld.c

clean:
	rm *.o helloworld

