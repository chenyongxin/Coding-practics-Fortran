program main
  implicit none
  integer :: a(10), b(10), i
  a = 0
  a(1:10:2) = 1
  do i = 1, 10
     b(i) = i
  end do
  print*, a
  where(a == 1)
     a = b
  end where
  print*, a
  print*, a == 1
  where (a>5)
     a=0
  end where
  print*, a
end program main
