module mod
  implicit none
  type :: tt
     integer :: i, j
  end type tt
  type(tt) :: b
  integer :: c, d
end module mod

program main
  use mod
  implicit none
  c = 3
  d = 4
  b%i = c
  b%j = d
  print*,b ! b%i, b%j
end program main
