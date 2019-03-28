program chol_ppal

use datasissim_interface
use sistu_interface
use sistl_interface
use chol_interface
use residuo_interface

implicit none

real, dimension(:,:), allocatable :: a
real, dimension(:,:), allocatable :: a_copia
real, dimension(:), allocatable :: b
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

allocate(a(n,n), a_copia(n,n), b(n), u(n), w(n), r(n))

call datasissim(a, b)

print*, 'O termo independente b e: '
print*, b
print*,

a_copia = a

do j = 2, n
  do i = 1, j-1
    a_copia(i,j) = a_copia(j,i)
  end do
end do

print*, 'A matriz A copia e: '

do i=1,n
  print*, a_copia(i,1:n)
end do


call chol(a, deter)

print*, 'O termo independente b e: '
print*, b
print*,

call sistl(a,b,w)

!call residuo(a, u, w, r)

print*,
print*, 'Vector w (Solucion): '
print*,

print*,
print*, w
print*,

call sistu(transpose(a),w,u)

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
