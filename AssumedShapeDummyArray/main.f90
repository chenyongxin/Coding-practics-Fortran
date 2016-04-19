

program main
  implicit none
  integer :: a(3),b(3)
  a=(/1,2,3/)
  b=(/0,0,0/)
  call process(a,b)
  print*,b




contains
  subroutine process(data1, data2)
    implicit none
    integer,intent(in) :: data1(:)
    integer,intent(out):: data2(:)
    data2=(/1,2,3/)
    data2=2*data1
    print*, 'Size of b is', size(b)
  end subroutine process
end program main

  
