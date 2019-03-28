CC = f95
MAIN= executable

SRCS = househ_interface.f95 datasissim_interface.f95 sistu_interface.f95 residuo_interface.f95 househ_ppal.f95 datasissim.f95 sistu.f95 residuo.f95 househ.f95

OBJS = $(SRCS:.c=.o)

$(MAIN): $(OBJS)
	$(CC) -o $(MAIN) $(OBJS)

%.o: %.c
	$(CC) -c -o $@ $<

cleanall: clean
	rm -f $(MAIN)

clean:
	rm -f *.mod *.~w
