module mod
  implicit none
  type :: body
     real(8) :: dx
  end type body
end module mod

program main
  use mod
  implicit none
  integer :: dx
  type(body) :: a
  dx=1
  a%dx = 1.9
  print *, dx, a%dx
end program main
