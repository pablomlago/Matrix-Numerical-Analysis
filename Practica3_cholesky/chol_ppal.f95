program chol_ppal

use datasissim_interface
use sistu_interface
use sistl_interface
use chol_interface
use residuo_interface

implicit none

real(8), dimension(:,:), allocatable :: a
real(8), dimension(:,:), allocatable :: a_copia
real(8), dimension(:), allocatable :: b
real(8), dimension(:), allocatable :: u
real(8), dimension(:), allocatable :: w
real(8), dimension(:), allocatable :: r

real(8) :: deter

integer :: n, i, j

print*
print*, 'Introduce o orde do sistema: '
read*, n
print*

print*
print*, 'O orde introduce e: ', n
print*

allocate(a(n,n), a_copia(n,n), b(n), u(n), w(n), r(n))

!call datasissim(a, b)

do i=1,n
  do j=1,n
    if(i==j) then
      a(i,j) = 5
    else
      a(i,j) = (i+j)/10.
    end if
  end do
  b(i) = 2
end do

print *,
do i =1,n
  print*,a(i,:)
end do

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

call sistu(a,w,u)

print*,
print*, 'Vector u (Solucion): '
print*,

print*,
print*, u
print*,

print*,
print*, 'Determinante',deter
print*,

call residuo(a_copia, b, u, r)

if (allocated(a)) deallocate(a)

if (allocated(b)) deallocate(b)

if (allocated(u)) deallocate(u)

end program
