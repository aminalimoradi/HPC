

gfortran -o amin.x math.f90 fillMatrix.f90
./amin.x
ifort -o amin.x math.f90 fillMatrix.f90
./amin.x
gfortran -O0 -o amin.x math.f90 fillMatrix.f90
./amin.x
gfortran -O1 -o amin.x math.f90 fillMatrix.f90
./amin.x
gfortran -O2 -o amin.x math.f90 fillMatrix.f90
./amin.x
gfortran -O3 -o amin.x math.f90 fillMatrix.f90
./amin.x
ifort -O0 -o amin.x math.f90 fillMatrix.f90
./amin.x
ifort -O1 -o amin.x math.f90 fillMatrix.f90
./amin.x
ifort -O2 -o amin.x math.f90 fillMatrix.f90
./amin.x
ifort -O3 -o amin.x math.f90 fillMatrix.f90
./amin.x
gfortran -o amin.x math.f90 fillMatrix.f90 matrix_subroutine.f90 -fopenmp
./amin.x
ifort -o amin.x math.f90 fillMatrix.f90 matrix_subroutine.f90 -qopenmp
./amin.x
ifort -o amin.x matrix_blas.f90 fillMatrix.f90 -lblas
./amin.x
gfortran -o amin.x matrix_blas.f90 fillMatrix.f90 -lblas
./amin.x
