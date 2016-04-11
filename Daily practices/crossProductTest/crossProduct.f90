PROGRAM crosstest
  IMPLICIT NONE

  INTEGER, DIMENSION(3) :: m, n

  m=(/1, 2, 3/)
  n=(/4, 5, 6/)
  print*, 'm=', m
  print*, 'n=', n
  print*, cross(m,n)

contains
  
  FUNCTION cross(a, b)
    implicit none
    INTEGER, DIMENSION(3), INTENT(IN) :: a, b
    INTEGER :: cross(3) !, DIMENSION(3) :: cross
    cross(1) = a(2) * b(3) - a(3) * b(2)
    cross(2) = a(3) * b(1) - a(1) * b(3)
    cross(3) = a(1) * b(2) - a(2) * b(1)
  END FUNCTION cross

END PROGRAM crosstest
