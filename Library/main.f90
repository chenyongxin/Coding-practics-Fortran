

program main
!  use test_interface, only : add
  use mod
  real :: a
 ! a = add(3., 4.)
 ! print*, a
  call test_add(3,5)
end program main
