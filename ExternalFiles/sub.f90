subroutine calc(a, b)
  implicit none
  integer :: a, b, add
  print*, 'calculation result is ', add(a, b)
end subroutine calc

integer function add(a, b)
  implicit none
  integer :: a, b
  add = a+b
end function add
