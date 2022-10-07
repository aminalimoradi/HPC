subroutine fillMatrix(M,n)
  ! Subroutine to fill the leading n rows and columns of array M.
  ! To define parameter and symbols:
  
  implicit none
  integer :: n,seed_size
  integer, allocatable :: seed(:)
  real(8) :: M(n,n)
  
  ! Call random seed for matrix:
  ! Find out how many seeds the default PRNG algorithm needs:
  call random_seed(size = seed_size)
  
  
  ! Allocate the seed variable:
  ! Start calculating matrix:
  allocate(seed(seed_size))
  
  
  ! Somewhat randomly set the seeds and report them:
  call random_seed(get=seed)
  
  ! The result is going to show:
  print *,' Running PRNG with ',seed_size,' seeds:'
  print *, seed
  
  ! Now fill the array with PRNs:
  call random_number(M)
  
  ! De-allocate the seed variable:
  deallocate(seed)
end subroutine fillMatrix
