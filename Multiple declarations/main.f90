 PROGRAM test
   implicit none
   integer :: i,j,k
   integer,allocatable :: a(:)
   integer,dimension(1:4) :: b
   allocate(a(0))
   a=0
   print*,a
   print*,size(a,1)
 
   call append2(a,1)
   do i=1,size(a)
   	print*,a(i)
   end do 


   
   call append2(a,2)
   do i=1,size(a)
   print*,a(i)
   end do



   
 contains
   
   subroutine append(b,cen)
     implicit none
     integer,allocatable,intent(inout) :: b(:,:)
     integer,dimension(1:2),intent(in) :: cen
     integer,allocatable :: temp(:,:)
     integer :: sz
     sz=size(b,1)
     allocate(temp(sz+1,2))
     temp(1:sz,:)=b
     temp(sz+1,:)=cen
     deallocate(b)
     allocate(b(sz+1,2))
     b=temp
   end subroutine append

   subroutine append2(b,cen)
     implicit none
     integer,allocatable,intent(inout) :: b(:)
     integer,intent(in)                :: cen
     integer,allocatable :: temp(:)
     integer :: sz
     sz=size(b,1)
     allocate(temp(sz+1))
     temp(1:sz)=b
     temp(sz+1)=cen
     deallocate(b)
     allocate(b(sz+1))
     b=temp
   end subroutine append2
   
	
 end PROGRAM test
