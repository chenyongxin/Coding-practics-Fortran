program test
implicit none

print*, 'Find y is ', find_y(2., cin=1., bin=2., ain=2.)

contains

  function find_y(x,ain,bin,cin)
    real :: find_y,x
    real :: a,b,c
   ! real,optional :: ain,bin,cin
    real :: ain,bin,cin
    a=0
    b=0
    c=0
    !if(present(ain))a=ain
    !if(present(bin))b=bin
    !if(present(cin))c=cin
    !print*, 'ain=',ain, 'bin=', bin, 'cin=', cin
    a=ain
    b=bin
    c=cin
    find_y=a*x**2 + b*x  +c
  end function  find_y

end program test
