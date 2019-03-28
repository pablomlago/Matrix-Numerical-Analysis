CC = f95
MAIN= executable

SRCS = residuo_interface.f95 chol_interface.f95 sistu_interface.f95 sistl_interface.f95 datasissim_interface.f95 chol.f95 sistu.f95 sistl.f95 datasissim.f95 residuo.f95 chol_ppal.f95

OBJS = $(SRCS:.c=.o)

$(MAIN): $(OBJS)
	$(CC) -o $(MAIN) $(OBJS)

%.o: %.c
	$(CC) -c -o $@ $<

cleanall: clean
	rm -f $(MAIN)

clean:
	rm -f *.mod *.~w
