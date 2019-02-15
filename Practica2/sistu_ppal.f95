program sistu_ppal

use sistub_interface
use leer_mat_interface

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

call leer_mat(a, b, u)
call sistub(a, b, u)

print*,
print*, 'Vector u: '
print*,

print*,
print*, u
print*,

!if (allocated(a)) deallocate(a, stat=err)

!if (allocated(b)) deallocate(b, stat=err)

!if (allocated(u)) deallocate(u, stat=err)

end program
