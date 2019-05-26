program sistu_ppal

use datasissim_interface
use jacobi_interface

implicit none

real, dimension(:,:), allocatable :: a
real, dimension(:), allocatable :: b
real, dimension(:), allocatable :: u

real :: eps
integer :: n, i,j, nmaxit, ier

print*
print*, 'Introduce o orde do sistema: '
read*, n
print*

print*
print*, 'O orde introduce e: ', n
print*

allocate(a(n,n), b(n), u(n))

print*
print*, 'Introduce o epsilon: '
read*, eps
print*

print*
print*, 'Introduce o numero maximo de iteracions: '
read*, nmaxit
print*


!call datasissim(a, b)

do i=1,n
  do j=1,n
    if(i==j) then
      a(i,j) = 5
    else
      a(i,j) = (i+j)*0.1
    end if
  end do
  b(i) = 2
end do

call jacobi(a, b, u, eps, nmaxit, ier)

print*,
do i=1,n
  print*, a(i,:)
end do
print*,

print*,
print*, 'Vector u (solucion): '
print*,

print*,
print*, u
print*,

if (allocated(a)) deallocate(a)

if (allocated(b)) deallocate(b)

if (allocated(u)) deallocate(u)

end program
