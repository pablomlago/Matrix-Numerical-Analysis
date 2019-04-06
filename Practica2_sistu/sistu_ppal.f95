program sistu_ppal

use sistub_interface
use datasissim_interface

implicit none

real, dimension(:,:), allocatable :: a
real, dimension(:), allocatable :: b
real, dimension(:), allocatable :: u
real, dimension(:), allocatable :: r

integer :: n

print*
print*, 'Introduce o orde do sistema: '
read*, n
print*

print*
print*, 'O orde introduce e: ', n
print*

allocate(a(n,n), b(n), u(n))

u = 0

call datasissim(a, b)
call sistub(a, b, u)

print*,
print*, 'Vector u: '
print*,

print*,
print*, u
print*,

if (allocated(a)) deallocate(a)

if (allocated(b)) deallocate(b)

if (allocated(u)) deallocate(u)

end program
