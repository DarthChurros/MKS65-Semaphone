ifdef MEM
	DATA = -g
	VG = valgrind --leak-check=full
endif

all: main.o
	gcc $(DATA) control control.c
	gcc $(DATA) write write.c

control:
	$(VG) ./control $(ARGS)

write:
	$(VG) ./write $(ARGS)

clean:
	rm control
	rm write
