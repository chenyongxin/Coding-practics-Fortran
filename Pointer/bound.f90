!-----------------------------------------------------------
!               Array pointer bound test     
! This test by examing an array pointer's lower/upper bound    
! when it points to a section of array or point to the whole    
! array target.
!
!
! When the pointer points to a section of array, the index
! always start from 1, no matter what is starting index of 
! target array.
!
! When the pointer points to a whole array, the bounds of 
! pointer are identical to the target array
!
! In this program, the modification of pointer as an argument
! in subroutine is also tested.
!-----------------------------------------------------------





program main
  implicit none
  integer,target  :: a(0:3,0:3)
  integer,pointer :: ptr(:,:)

  !-- assignment
  call assignment(a)

  !-- display array
  print*, 'The original array'
  call print_array(a)
  
  !-- test points to only a section of array
  ptr => a(0:1,0:1)
  print*, 'Test 1'
  print '("1st dim lower and upper bounds are ", i0,1x,i0)', &
       lbound(ptr,1), ubound(ptr,1)
  print '("2nd dim lower and upper bounds are ", i0,1x,i0)', &
       lbound(ptr,2), ubound(ptr,2)

  !-- use pointer as input to modify a section of original array
  print*, 'Modify a small section to original array'
  call times2(ptr)
  call print_array(a)

  !-- test points to the whole array
  ptr => a
  print*, 'Test 2'
  print '("1st dim lower and upper bounds are ", i0,1x,i0)', &
       lbound(ptr,1), ubound(ptr,1)
  print '("2nd dim lower and upper bounds are ", i0,1x,i0)', &
       lbound(ptr,2), ubound(ptr,2)

  !-- use pointer as input to modify the whole original array
  print*, 'Modify original array'
  call assignment(a)
  call times2(ptr)
  call print_array(a)


  !-- test print a small part of array by using pointer
  ptr => a(0:1,0:2)
  print*, 'print array by using pointer'
  call print_array(ptr)

contains

  subroutine assignment(a)
    integer,intent(inout) :: a(:,:)
    integer :: i,j,n1,n2
    n1=size(a,1); n2=size(a,2)
    forall(i=1:n1,j=1:n2) a(i,j)=(i-1)*n1+j
  end subroutine assignment       
  
  
  subroutine times2(a)
    integer,intent(inout) :: a(:,:)
    a = a*2
  end subroutine times2

  subroutine print_array(a)
    integer,intent(in) :: a(:,:)
    integer :: i
    do i=1,size(a,1)
       print*, a(i,:)
    end do
  end subroutine print_array
  
end program main
