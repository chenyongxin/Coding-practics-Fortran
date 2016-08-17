program main
  USE  MyTrigonometricFunctions
  implicit none
  integer :: a, b, add
!  WRITE(*,*)  'Value of PI = ', PI   ! PI cannot be used here
  WRITE(*,*)  'Value of Degree180 = ', Degree180   ! PI cannot be used here
  print*, mysin(30.)
  print*, degreetoradian(30.)
  print*, radiantodegree(2.)
  print*, mysin(30.)
  call getSum
  call getSum
  call getSum
end program main
  
