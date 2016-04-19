program main
  use mod
  implicit none


  type(vector) :: v1,v2
  v1=vector(1.,0.,0.)
  v2=vector(0.,1.,0.)
  print*,'v1 cross v2=', v1 * v2
  


end program main
