CC = f95
MAIN= executable

SRCS = leer_mat.f95 residuo.f95 sistu.f95 sistu_ppal.f95

OBJS = $(SRCS:.c=.o)

$(MAIN): $(OBJS)
	$(CC) -o $(MAIN) $(OBJS)

%.o: %.c
	$(CC) -c -o $@ $<

cleanall: clean
	rm -f $(MAIN)

clean:
	rm -f *.o *.~w
