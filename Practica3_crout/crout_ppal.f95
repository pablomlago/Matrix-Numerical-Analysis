program crout_ppal

use datasissim_interface
use sistu_interface
use sistl_interface
use croutsim_interface
use residuo_interface

implicit none

real, dimension(:,:), allocatable :: a
real, dimension(:,:), allocatable :: a_copia
real, dimension(:), allocatable :: b
real, dimension(:), allocatable :: u
real, dimension(:), allocatable :: w
real, dimension(:), allocatable :: z
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

allocate(a(n,n), a_copia(n,n), b(n), u(n), w(n), z(n), r(n))

call datasissim(a, b)

a_copia = a

do j = 2, n
  do i = 1, j-1
    a_copia(i,j) = a_copia(j,i)
  end do
end do

call croutsim(a, deter)

print*, 'A matriz A e: '

do i=1,n
  print*, a(i,1:n)
end do

call sistl(a,b,w)

print*,
print*, 'Vector w (Solucion): '
print*,

print*,
print*, w
print*,

do i=1,n
  z(i) = w(i)/a(i,i)
end do

print*,
print*, 'Vector z (Solucion): '
print*,

print*,
print*, z
print*,

call sistu(transpose(a),z,u)

print*,
print*, 'Vector u (Solucion): '
print*,

print*,
print*, u
print*,

call residuo(a_copia, b, u, r)

if (allocated(a)) deallocate(a)

if (allocated(b)) deallocate(b)

if (allocated(u)) deallocate(u)

end program
