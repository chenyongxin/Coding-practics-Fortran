module mod
  implicit none
  type :: stuff
     integer :: a
   contains
     procedure :: calc=>calculation
  end type stuff
contains
  subroutine calculation(a,b,c)
    implicit none
    ! (a+b)/c
    class(stuff) :: a
    integer,intent(in) :: b,c
    integer, external :: div
    call add(a%a,b)
    print *, '(a+b)/c=', div(a%a,c)
  end subroutine calculation

end module mod
