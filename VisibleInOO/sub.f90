subroutine add(a,b)
  implicit none
  integer,intent(inout) :: a,b
  a=a+b
end subroutine add

integer function div(a,b)
  implicit none
  integer,intent(in) :: a,b
  div=a/b
end function div
  
