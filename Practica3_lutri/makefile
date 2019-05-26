CC = gfortran
MAIN= executable

SRCS = tridiagxvector_interface.f95 residuotri_interface.f95 tridiagxvector.f95 residuotri.f95 tri_ppal.f95
OBJS = $(SRCS:.c=.o)

$(MAIN): $(OBJS)
	$(CC) -o $(MAIN) $(OBJS)

%.o: %.c
	$(CC) -c -o $@ $<

cleanall: clean
	rm -f $(MAIN)

clean:
	rm -f *.mod *.~w
