program sistu_ppal

use datasissim_interface
use jacobi_interface
use residuo_interface

implicit none

real, dimension(:,:), allocatable :: a
real, dimension(:), allocatable :: b
real, dimension(:), allocatable :: u
real, dimension(:), allocatable :: r

real :: eps
integer :: n, i, nmaxit, ier

print*
print*, 'Introduce o orde do sistema: '
read*, n
print*

print*
print*, 'O orde introduce e: ', n
print*

allocate(a(n,n), b(n), u(n), r(n))

print*
print*, 'Introduce o epsilon: '
read*, eps
print*

print*
print*, 'Introduce o numero maximo de iteracions: '
read*, nmaxit
print*


call datasissim(a, b)

call jacobi(a, b, u, eps, nmaxit, ier)

call residuo(a, b, u, r)

print*,
print*, 'Vector u (solucion): '
print*,

print*,
print*, u
print*,

if (allocated(a)) deallocate(a)

if (allocated(b)) deallocate(b)

if (allocated(u)) deallocate(u)

if (allocated(r)) deallocate(r)

end program
