!=====================================================================
!In this program, I want to test if possible to just import only
! one visiable subroutine which is combined with other functions
! or/and other subroutines by using only tag in use
!=====================================================================
program main
  use sub, only:visible
  implicit none
  integer :: c=3
  call visible(c)
  !call add(c,2)     ! doesn't work since only visiable is imported from sub
  print*, "Now, the value of c is", c
end program main

!=====================================================================
!The result is even within the combination of other subroutines and
! functions, tt is still avaiable to use the top level fun/sub in other
! places. ( This is a kind of converter or interface)
!
!The next step is to test if it is avaliable to use functions with the
! names but by using only tag to import in other places simultanteously
!=====================================================================
