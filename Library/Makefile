f90 = gfortran
libs = interface.o 
libpath = -I./bin
fflags = -Wall
sources = *.f90

obj = main.o bin/$(libs)

#$(obj): $(sources)
#	$(f90) $(fflags) $(libpath) -c $(sources)

.SUFFIXES:
.SUFFIXES: .f90 .o .mod
.f90.o: 
	$(f90) $(fflags) $(libpath) -c $<
.f90.mod:
	$(f90) $(fflags) $(libpath) -c $<

a: $(obj) 
	$(f90) $^ $(fflags) -o $@ 

clean:
	rm -rf *.o *.mod a *~
