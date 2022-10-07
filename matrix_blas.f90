!code for matrix-matrix multiplying with Blas library

Program matrix_blas
  implicit none
  integer, parameter :: n=2000
  integer :: i,j,k
  real(8) :: A(n,n), B(n,n), C(n,n), start, finish
  
  !fill A and B with random numbers between 0 and 1 L
  call fillMatrix(A,n)
  call fillMatrix(B,n)
  
  
  ! Recording time for process
  call cpu_time(start)
  
  call DGEMM('N', 'N', n,n,n,1d0,A,n,B,n,0d0,C,n)
  
  
  ! For calculating time since starting process
  call cpu_time(finish)
  print *, 'Time elapsed ' ,finish-start
  
  end program matrix_blas
