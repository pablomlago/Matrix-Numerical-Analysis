CC = f95
MAIN= executable

SRCS = residuo_interface.f95 datasissim_interface.f95 rayleigh_interface.f95 residuo.f95 datasissim.f95  rayleigh.f95 rayleigh_ppal.f95
OBJS = $(SRCS:.c=.o)

$(MAIN): $(OBJS)
	$(CC) -o $(MAIN) $(OBJS)

%.o: %.c
	$(CC) -c -o $@ $<

cleanall: clean
	rm -f $(MAIN)

clean:
	rm -f *.mod *.~w
