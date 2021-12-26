PROGRAM_NAME_1 = thread_client1
PROGRAM_OBJS_1 = thread_client1.o

PROGRAM_NAME_2 = thread_server1
PROGRAM_OBJS_2 = thread_server1.o

PROGRAM_NAME_3 = thread_client2
PROGRAM_OBJS_3 = thread_client2.o

PROGRAM_NAME_4 = thread_server2
PROGRAM_OBJS_4 = thread_server2.o

PROGRAM_NAME_ALL = $(PROGRAM_NAME_1) $(PROGRAM_NAME_2) $(PROGRAM_NAME_3) $(PROGRAM_NAME_4)
PROGRAM_OBJS_ALL = $(PROGRAM_OBJS_1) $(PROGRAM_OBJS_2) $(PROGRAM_OBJS_3) $(PROGRAM_OBJS_4)


REBUIDABLES = $(PROGRAM_NAME_ALL) $(PROGRAM_OBJS_ALL)

all: $(PROGRAM_NAME_ALL)
	@echo "Finished!"

$(PROGRAM_NAME_1): $(PROGRAM_OBJS_1)
	gcc -o $@ $^ -pthread -I ./

$(PROGRAM_NAME_2): $(PROGRAM_OBJS_2)
	gcc -o $@ $^ -pthread -I ./

$(PROGRAM_NAME_3): $(PROGRAM_OBJS_3)
	gcc -o $@ $^ -pthread -I ./

$(PROGRAM_NAME_4): $(PROGRAM_OBJS_4)
	gcc -o $@ $^ -pthread -I ./

%.o: %.c
	gcc -c $< -pthread -Wall -Wno-unused-variable -I ./

clean:
	rm -f $(REBUIDABLES)
	@echo "Clean done"
