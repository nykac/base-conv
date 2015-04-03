LIBS = -lreadline

converter: base-conv.o main.o 
	$(CC) -o converter base-conv.o main.o $(LIBS) $(CFLAGS) 
test: base-conv.o test.o
	$(CC) -o test base-conv.o test.o $(LIBS) $(CFLAGS) 
	./test

clean:
	rm -rf *.o converter test
