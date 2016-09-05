program main
  implicit none
  character(20) :: ch, ch2
  ch = 'abc'
  ch2 = 'def'
  print*,1, ch,2           !           1 abc                            2
  print*,2, trim(ch), 3    !           2 abc           3
  write(ch,"(i0,A,i0)") 1, trim(ch2), 1
  print*, ch
  print*, 'abc'//'def'
end program main
