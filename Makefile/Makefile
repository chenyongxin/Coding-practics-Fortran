f90 = gfortran
obj = sub.f90
LDFLAGS =
srcdir = src
fflags = -c -Wall

#all: $(src) 

exe: main.f90 $(srcdir)/sub.o
	$(f90) $^ -o $@ 

$(srcdir)/sub.o: $(srcdir)/sub.f90 
	$(f90) -c -o  $@  $<


clean:
	rm -rf  *.o *.mod exe

