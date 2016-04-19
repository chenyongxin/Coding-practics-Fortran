module mod
  implicit none
  ! Test user defined operator by using interface operator to test vector cross product.
  type :: vector
     real :: x, y, z
  end type vector

  interface operator (*)
     module procedure :: vector_cross_product
  end interface operator (*)

contains

  type(vector) function vector_cross_product(a,b)
    implicit none
    type(vector), intent(in) :: a,b
    vector_cross_product%x = a%y*b%z - a%z*b%y
    vector_cross_product%y = a%z*b%x - a%x*b%z
    vector_cross_product%z = a%x*b%y - a%y*b%x
  end function vector_cross_product

end module mod
    

  
