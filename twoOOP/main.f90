! 1. test in the same module to implement two or more
! objects.

! Yes, it can.

! 2. test cross-use two objects in the same module.
! It must define reference type first than used.

module mod
  implicit none
  type :: a
     integer :: i
   contains
     procedure :: plus => aplus2
  end type a

  type :: b
     integer :: i
     type(a) :: a1
   contains
     procedure :: minus => bminus2
  end type b

contains

  integer function aplus2(aa)
    class(a), intent(inout) :: aa
    aplus2 = aa%i + 2
  end function aplus2

  integer function bminus2(bb)
    class(b), intent(inout) :: bb
    bminus2 = bb%i - 2
  end function bminus2

end module mod

program main
  use mod
  implicit none
  type(a) :: aa 
  type(b) :: bb
  aa = a(3)
  bb = b(3, aa)
  print *, aa%plus()
  print *, bb%minus()
end program main
