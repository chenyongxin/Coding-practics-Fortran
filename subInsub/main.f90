module aa
contains
  subroutine subA(a, b)
    implicit none
    integer :: a, b
    call subB(b)
    print *, 'a + b =', a+b
  contains
    subroutine subB(b)
      !implicit none
      integer b
      b = b**2
    end subroutine subB
    
  end subroutine subA
end module aa


program main
  use aa
  implicit none
  integer :: m, n
  m = 1
  n = 2
  call subA(m, n)
  print*, m, n
end program main



