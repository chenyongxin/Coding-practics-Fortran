!----------------------------------------------------------!
!                  Linked list example
!
! This example is from S. J. Chapman's book Fortran 95/2003
!   for Scientists & Engineers. Simplification is made by
!   Y. Chen.   
!
! This example shows how to use pointer type to define a 
!   linked list. However, this is not a very good example,
!   since we need to define all types as pointers. This
!   may cause unsafety issue. We can optimise it by use
!   only the derived type and allocate/associate the tail/head 
!   linkage by an intrinsic procedure.           
!
!----------------------------------------------------------!
program linked_list

  implicit none

  type :: real_value
     real :: value
     type(real_value),pointer :: p=>null()
  end type real_value

  integer,parameter :: n=5
  type(real_value),pointer :: head, ptr, tail
  integer :: i
  real :: temp, list(n)

  forall(i=1:n) list(i)=i*2.

  head => null()
  
  !-- make linked-list
  do i=1,n

     temp = list(i)
     
     if(.not. associated(head)) then
        print*, 'In head'
        allocate(head)
        tail => head
        print*, 'if associated(p)', associated(head%p)
        !tail%p => null()        ! not necessary
        tail%value = temp
     else
        print*, 'In tail'
        allocate(tail%p)
        tail => tail%p
        print*, 'if associated(tail)', associated(tail%p)
        !tail%p => null()        ! not necessary
        tail%value = temp
     end if

  end do



  !-- output linked-list
  ptr => head
  do
     if (.not. associated(ptr)) exit
     print*, ptr%value
     ptr => ptr%p
  end do


end program linked_list
        
     

  
  

  

  
