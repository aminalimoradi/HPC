  ! Code for multiplying two matrices.
program mat_mat

  ! To define parameter and symbols :
  
  implicit none
  integer, parameter :: n=1000
  integer :: i,j,k
  real(8) :: A(n,n), B(n,n), C(n,n), start, finish

 
  ! Fill A and B with random numbers on (0,1):
  ! To call subroutine :
  
  call fillMatrix(A,n)
  call fillMatrix(B,n)
  
  ! To start recording process time :
  
  ! start= omp_get_wtime() 
  call cpu_time(start)
  
  C = 0d0
  do i=1,n
     do j=1,n
        do k=1,n
           C(i,k) = C(i,k) + A(i,j)*B(j,k)
        end do
     end do
  end do
  
  
  ! call DGEMM('N', 'N', n,n,n, 1d0, A,n, B,n, 0d0,C,n)
 
  ! To finish recording porcess time :
  
  call cpu_time(finish)
  ! finish= omp_get_wtime()
  
  print *,' Time elapsed ',finish-start
  
end program mat_mat

