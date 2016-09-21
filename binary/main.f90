program main
  implicit none
  real :: a(10)
  character :: lf=char(10)
  open(1, file='new.txt', status = 'replace', form = 'unformatted', access='stream')
  write(1) a
  write(1) 'abc','def',3
  write(1) 'def'
  print*, lf
  print*, 'abc'//'def'
end program main
