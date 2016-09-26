program main
  implicit none
  real,allocatable :: a(:)
  integer :: i
  allocate(a(6))
  do i = 1, 6
     a(i) = i*1.0
  end do
  call count(a)
contains
  subroutine count(a)
    real, intent(inout) :: a(0:)
    integer :: i
    print*, 'no elements:', size(a)
    do i = 0, size(a)-1
       print*, 'a(', i, '   )=', a(i)
    end do
  end subroutine count
end program main
