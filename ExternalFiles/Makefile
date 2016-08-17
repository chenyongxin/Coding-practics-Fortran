f90 = gfortran

LDFLAGS =
srcdir = src
fflags = -Wall

#all: $(src) 
obj = mod.o main.o
.SUFFIXES:
.SUFFIXES: .f90 .o .mod 
.f90.o:
	$(f90) $(fflags) -c $< 

exe: $(obj)
	$(f90) $^ -o $@ 

clean:
	rm -rf  *.o *.mod exe *~

