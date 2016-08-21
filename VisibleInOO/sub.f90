subroutine add(a,b)
  implicit none
  integer,intent(inout) :: a,b
  integer, external :: div
  a=a+b
  print*, 'sum is ', a
  print*, 'div', div(a,b)
end subroutine add

integer function div(a,b)
  implicit none
  integer,intent(in) :: a,b
  div=a/b
end function div
  
