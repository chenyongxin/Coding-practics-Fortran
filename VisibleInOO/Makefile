f90 = gfortran

LDFLAGS =
srcdir = src
fflags = -c -Wall

#all: $(src) 
obj = main.o sub.o mod.o
.SUFFIXES:
.SUFFIXES: .f90 .o .mod 
.f90.o:
	$(F90) $(fflags)  -c $< 
.f90.mod:
	$(f90) $(FFLAGS)  -c $< 

exe: $(obj)
	$(f90) $^ -o $@ 

mod.o: mod.f90 sub.o

main.o: mod.o




clean:
	rm -rf  *.o *.mod exe

