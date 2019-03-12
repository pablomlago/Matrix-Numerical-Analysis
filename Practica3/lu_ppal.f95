program sistu_ppal

use datasissim_interface
use lu_interface
use sistu_interface
use sistl_interface

implicit none

real, dimension(:,:), allocatable :: a
real, dimension(:,:), allocatable :: a_copia
real, dimension(:), allocatable :: b
real, dimension(:), allocatable :: b_copia
real, dimension(:), allocatable :: u
real, dimension(:), allocatable :: w
real, dimension(:), allocatable :: r

real :: deter

integer :: n, i, j

print*
print*, 'Introduce o orde do sistema: '
read*, n
print*

print*
print*, 'O orde introduce e: ', n
print*

allocate(a(n,n), a_copia(n,n), b(n), b_copia(n), u(n), w(n), r(n))

u = 0

call datasissim(a, b)

a_copia = a

b_copia = b

call lu(a, deter)

do i=1,n
  print*, a(i,:)
end do

call sistl(a,b,w)
call sistu(a,w,u)

print*,
print*, 'Vector u (Solucion): '
print*,

print*,
print*, u
print*,

if (allocated(a)) deallocate(a)

if (allocated(b)) deallocate(b)

if (allocated(u)) deallocate(u)

if(allocated(r)) deallocate(r)

if(allocated(a_copia)) deallocate(a_copia)

end program
