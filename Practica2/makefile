CC = f95
MAIN= executable

SRCS = sistub_interface.f95 leer_mat_interface.f95 leer_mat.f95 sistub.f95 sistu_ppal.f95

OBJS = $(SRCS:.c=.o)

$(MAIN): $(OBJS)
	$(CC) -o $(MAIN) $(OBJS)

%.o: %.c
	$(CC) -c -o $@ $<

cleanall: clean
	rm -f $(MAIN)

clean:
	rm -f *.mod *.~w
