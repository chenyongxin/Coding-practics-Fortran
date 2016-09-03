subroutine input_angles(a,ldata)
  implicit none
  Integer ldata,i
  real a(1:ldata),aa
  do i=1,ldata
     aa = a(i)
     call convert
     a(i) = aa
  end do
contains
  subroutine convert
    real, parameter :: pi = 3.1415926
    aa = aa*pi/180.0
  end subroutine convert
  
end subroutine input_angles

program main
  implicit none
  real :: a(2)=[90., 180.]
  call input_angles(a, size(a))
  print*, a
end program main
