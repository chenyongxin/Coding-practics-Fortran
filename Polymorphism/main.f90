!===========================================================
!Program to test fortran Polymorphism feature in module with
! keyword Interface
!===========================================================
module test_interface
  implicit none
  interface add
     procedure addi, addr
  end interface add
contains
  !Add an integer
  integer function addi(a,b)
    implicit none
    integer,intent(in) :: a,b
    addi=a+b
  end function addi
  !Add a real number
  real function addr(a,b)
    implicit none
    real, intent(in) :: a,b
    addr=a+b
  end function addr
end module test_interface

program main
  use test_interface, only:add
  implicit none
  integer :: a,b
  real    :: c,d
  a=1;b=2
  c=1.1;d=2.2
  print*,'The sum of two intergers',a,' and ',b,' is',add(a,b)
  print*,'The sum of two real numbers',c,' and ',d,' is',add(c,d)
  !print*,'The sum of two real numbers',a,' and ',c,' is',add(a,c)
  ! The command above does not wor. The error message is (Non-match)
  ! Error: There is no specific function for the generic ‘add’ at (1)
end program main
