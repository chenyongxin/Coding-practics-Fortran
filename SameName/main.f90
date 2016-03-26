!=====================================================================
!Program to test calling subroutines or use functions with the same
! names but in different modules. Here, use only tag in USE.
!
!Notice sub1 and sub2 are identical
!=====================================================================
program main
  use sub1, only: times
  use sub2, only: add
  implicit none
  integer :: a,b
  a=3; b=4
  !call visible(a)
  call add(a,b)
  print*, 'a is ',a
  print*, "a*b=",times(a,b)
end program main

!=====================================================================
!Conclusion: we can use the fun/sub with the same name. But be careful
! to avoid ambigution by using only tag.
!The error message is  Name ‘add’ at (1) is an ambiguous reference to ‘add’ from module ‘sub1’
!=====================================================================
  
