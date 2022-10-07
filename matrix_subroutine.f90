subroutine matrix_mul(n,A,B,C)

  ! Call OpenMp library to parallel programming:
  use omp_lib
  
  ! To define parameter and symbols:
  implicit none
  integer :: n,i,j,k
  real(8) :: A(n,n),B(n,n),C(n,n)
  C = 0d0
  
  ! To call Openmp to parallel programming:
 !$omp parallel do private (i,j,k)
 
  do i=1,n
     do j=1,n
        do k=1,n
           C(i,j) = C(i,j) + A(i,k)*B(k,j)
        end do
     end do
  end do
  
  ! To close subroutine:
  
  !$omp end parallel do


  return
end subroutine matrix_mul

