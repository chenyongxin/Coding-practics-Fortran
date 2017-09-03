!----------------------------------------------------------!
!         Improved linked list structure             
!
! In this program, an improved version of linked list is
!   used. Only a derived type (object) is used. All the 
!   assignment operation is done by a subroutine recursively
!
! In this program, the global variable (list) and parameter 
!   (n) are used. This can be easily replaced by other 
!   stop criteria and mapping relationship practically. 
!
! In practice, I will use it into the objective oriented (OO)
!   fashion code as part of Multi-Grid Poisson solver. 
!
!----------------------------------------------------------!

program linked_list

  implicit none

  type :: real_value
     real :: value
     integer :: level=1   ! new feature as stop criteria
     type(real_value),pointer :: p=>null()
  end type real_value

  integer,parameter :: n=5
  type(real_value)  :: head
  integer :: i
  real :: temp, list(n)

  !-- give the test list
  forall(i=1:n) list(i)=i*2.

  !-- make linked-list recursively
  call re_init(head)

  !-- output linked-list recursively
  call print_linked_list(head)

contains

  !-- recursive initialization
  !-- here, global parameter(n--total levels) and variable(list)
  !   are used
  recursive subroutine re_init(a)
    type(real_value),intent(inout) :: a
    if(a%level==1) a%value = list(a%level)
    if (.not. associated(a%p)) then
       allocate(a%p)
       a%p%level = a%level+1
       a%p%value = list(a%level+1)
       if(a%p%level<n) call re_init(a%p)
    end if
  end subroutine re_init
       
  !-- print linked list
  recursive subroutine print_linked_list(a)
    type(real_value),intent(in) :: a
    print '("level=",i0,", value=",f8.2)', a%level, a%value
    if(associated(a%p)) call print_linked_list(a%p)
  end subroutine print_linked_list
  
end program linked_list
