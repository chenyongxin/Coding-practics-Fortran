! It is not available if want to use polymorphism property in the same
! module. It is even not available to call separate one in interface included
! module. Alternative way to use polymorphism is specially to write a module
! for polymorphism subroutines or functions.

! Test polymorphism in the current module
module test_interface
  implicit none
  
  interface add
     procedure :: addi, addr
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

module mod
  use test_interface
  implicit none
contains
  subroutine test_add(a, b)
    implicit none
    integer :: a, b
    integer :: c
    c = add(a, b)  ! it is equivalent to c = addi(a,b)
                   ! and each separate one can be called
    print*, 'c is', c
  end subroutine test_add
  
end module mod
