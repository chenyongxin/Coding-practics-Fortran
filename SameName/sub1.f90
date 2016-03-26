module sub1
contains
  subroutine visible(a)
    integer, intent(inout)::  a
    call add(a, 2)
    print*,"Final result is", times(a,4)
  end subroutine visible

  subroutine add(a,b)
    integer, intent(inout) :: a
    integer, intent(in)    :: b
    a=a+b
  end subroutine add

  integer function times(a,b)
    integer, intent(in) :: a
    integer, intent(in) :: b
    times=a*b
  end function times

end module sub1
    
