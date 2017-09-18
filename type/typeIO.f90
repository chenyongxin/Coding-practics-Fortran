module mod
  implicit none
  type :: test
     integer :: a=1
     real :: b(2,2)=reshape([1.,2.,3.,4.],[2,2])
     character(11) :: c='Hello world'
  end type test
end module mod

program main
  use mod
  implicit none
  integer :: i
  type(test) :: myTest, b
  character(10) :: c
!-- test write ascii  
  open(unit=1,file='test',status='replace')
  write(1,*) myTest
  close(1)
!-- make some difference
  b%a = 3
  b%b = reshape([4.,5.,3.,1.],[2,2])
  b%c = 'abc'
  print*, b
!-- read ascii   
  open(unit=1,file='test',status='old')
  read(1,*) b,c   ! be careful here: b%c only reads segment before space, i.e. 'hello'
  close(1)
  print*, b
  print*, c

!-- test write/read binary
  open(unit=1,file='test.bin',form='unformatted',status='replace')
  write(1) myTest
  close(1)
!-- make some difference
  b%a = 3
  b%b = reshape([4.,5.,3.,1.],[2,2])
  b%c = 'abc'
  print*, b
!-- read old type and overwrite  
  open(unit=1,file='test.bin',form='unformatted',status='old')
  read(1) b      ! binary io is safer
  close(1)
  print*, b
  
end program main
