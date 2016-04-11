program cross1
  implicit none
  real :: a(3), b(3), c(3), d(5)
  a=(/1., 1., 1./)
  b=(/3., 2., 0./)
  d=0.
  print*, 'a= ', a
  print*, 'b= ', b
  c=cross(a,b)
  print*, 'a cross b= ', cross(a,b)
  print*, 'The second and third number are ', c(2),c(3)
  !print*, 'replace a(1) and a(3) with above number '
  !a(1:3:2)=(/c(2),c(3)/)
  print*, 'replace 1st 3rd and 5th number with cross of a and b in d'
  d(1:5:2)=cross(a,b)
  print*, d
  !a(1:3:2)=(/c(2),c(3)/)
  !print*, a
contains
  function cross(a,b)
    ! returns unit normal
    implicit none
    real, intent(in) :: a(3), b(3)
    real             :: cross(3)
!    cross(1) = a(2) * b(3) - a(3) * b(2)
!    cross(2) = a(3) * b(1) - a(1) * b(3)
!    cross(3) = a(1) * b(2) - a(2) * b(1)
    cross=(/a(2)*b(3)-a(3)*b(2), a(3)*b(1)-a(1)*b(3), a(1)*b(2)-a(2)*b(1)/)
    cross=cross/sqrt(sum(cross**2))
  end function cross
end program cross1
