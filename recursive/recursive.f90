program main
  implicit none
  print*, '5!=', factorize(5)

contains
  recursive function factorize(n) result(r)
    implicit none
    integer n, r
    if (n == 1) then
       r = 1
    else
       r = n * factorize(n-1)
    end if
  end function factorize
end program main
