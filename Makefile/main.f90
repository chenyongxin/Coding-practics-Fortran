!=====================================================================!
!This program is to test combination of files in different folders by
! using makefile.
!=====================================================================!
program main
  use sub
  implicit none
  print*,a,b,c
end program main

!=====================================================================!
!The code above cannot be run since sub is defined in another folder.
! Use makefile to link them
!=====================================================================!
