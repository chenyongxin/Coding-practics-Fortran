program main
  use mod
  implicit none
  type(stuff) :: s
  s = stuff(5)
  call s%calc(3,2)
end program main
