program main
  implicit none
  integer, external :: add
  call sub(3, 4)
  print*, 'test', add(3, 4)
end program main





subroutine sub(a, b)
  implicit none
  integer :: a, b
  print*, 'the result is', add(a, b) 
contains
  integer function add(a, b)
    implicit none
    integer :: a, b
    add = a + b
  end function add
end subroutine sub

integer function add(a, b)
  implicit none
  integer :: a, b
  add = a + b
end function add
