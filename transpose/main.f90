program main
  implicit none
  integer :: a(4,3), i, j
  integer, allocatable :: b(:, :)
  do i = 1, 4
     do j = 1, 3
        a(i, j) = i
     end do
  end do
  do i = 1, 4
     print*, a(i, :)
  end do
  b = transpose(a)
  do i = 1, 3
     print*, b(i, :)
  end do
end program main
