! program tests a private variable in external module used by main function
! indirectly. This variable keeps the value once it is assigned.

module mod
  implicit none
  integer :: a
  private :: a
contains
  
  subroutine init(b)
    integer :: b
    a = b*2
  end subroutine init
  
  subroutine printA
    print*, a
  end subroutine printA
  
end module mod

program main
  use mod
  implicit none
  call init(3)
  call printA
  call printA
  !print*, a ! this is not available
end program main
