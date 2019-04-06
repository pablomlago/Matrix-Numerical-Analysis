CC = f95
MAIN= executable

SRCS = gaussb_interface.f95 datasissim_interface.f95 sistub_interface.f95 residuo_interface.f95 gaussb.f95 datasissim.f95 sistub.f95 residuo.f95 gauss_ppal.f95

OBJS = $(SRCS:.c=.o)

$(MAIN): $(OBJS)
	$(CC) -o $(MAIN) $(OBJS)

%.o: %.c
	$(CC) -c -o $@ $<

cleanall: clean
	rm -f $(MAIN)

clean:
	rm -f *.mod *.~w
