program main
  implicit none
  real :: a(2,2), x(2,2), b(2,2)
  integer :: i, j
  a(1,:)=[1,2]
  a(2,:)=[1,2]
  x(1,:)=[1,1]
  x(2,:)=[2,2]
  b = times(a, x)
  do i=1,2
     print*, b(i, :)
  end do
        

contains
  function times(A, x) result(r)
    implicit none
    real, intent(in) :: A(:,:), x(:, :)
    real, allocatable :: r(:, :)
    integer :: mx, my, i, j
    mx = size(A, 1)
    my = size(A, 2)
    allocate(r(mx, my))
    do i = 1, mx
       do j = 1, my
          r(i, j) = A(i, j) * x(i, j)
       end do
    end do
  end function times
    
end program main
