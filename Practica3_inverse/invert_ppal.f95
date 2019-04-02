program invert_ppal

use datasissim_interface
use lu_interface
use sistu_interface
use sistl_interface

implicit none

real, dimension(:,:), allocatable :: a
real, dimension(:,:), allocatable :: a_copia
real, dimension(:,:), allocatable :: a_inverse
real, dimension(:,:), allocatable :: jd
real, dimension(:), allocatable :: b
real, dimension(:), allocatable :: w

real :: deter

integer :: n, i

print*
print*, 'Introduce o orde do sistema: '
read*, n
print*

print*
print*, 'O orde introduce e: ', n
print*

allocate(a(n,n), a_inverse(n,n), a_copia(n,n), jd(n,n), b(n), w(n))

call datasissim(a)

a_copia = a

call lu(a, deter)

do i = 1, n
  b = 0
  b(i) = 1

  call sistl(a,b,w)
  call sistu(a,w,a_inverse(:,i))

end do

print*, 'A inversa de A é: '

do i=1,n
  print*, a_inverse(i,:)
end do

jd = matmul(a_copia,a_inverse)

print*, 'Matriz identidade: '

do i=1,n
  print*, jd(i,:)
end do

if (allocated(a)) deallocate(a)

if(allocated(a_inverse)) deallocate(a_inverse)

if(allocated(jd)) deallocate(jd)

end program
