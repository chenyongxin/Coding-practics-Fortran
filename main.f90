module abc
  real,dimension(1:3) :: u
end module abc

module b
  use abc
  real :: const
contains
  subroutine times
    u = u * const
  end subroutine times
end module b







program main
implicit none
integer,dimension(3,2) :: u
print*, size(u,1)
end program main
