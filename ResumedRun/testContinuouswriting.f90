!---------------------------------------------------------------------------------------------------------------------!
!                  CHEN Yongxin, University of Southampton                                                            !
! this program is to test if program can append data into existent file                                               !
! when resuming computation after termination. Sadly, cannot. Every time re-run it, it will eliminate previous data   !
! this test can confirm: in proaching/iteration problem, data is written every time step to file for postprocessing.  !
! once it is terminated, good habit is to back up the data generated for the next run.                                !
! Application area: Computation...                                                                                    !
!---------------------------------------------------------------------------------------------------------------------!
program main
  implicit none
  integer :: i
  do i = 1, 5
     write(9, *) i
     !flush(9)           ! either this line is commented or not, once the program is re-run,
                         ! the new data cannot be appended in fort.9 file
  end do
end program main
  
