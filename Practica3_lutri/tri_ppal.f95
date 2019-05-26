program tri_ppal

use residuotri_interface

implicit none

real(8), dimension(:), allocatable :: a, a_copia, b, b_copia,c ,c_copia,r, r_copia, res

integer :: n, i, j

real(8) :: deter

deter = 1.

print*, 'Introduce o orde do sistema: '
read*, n
print*
print*, 'O orde introducido e: ', n
print*

allocate(a(n), a_copia(n), b(n-1), b_copia(n-1), c_copia(2:n), c(2:n), r(n), r_copia(n), res(n))

!print*,
!print*, 'Introduce a diagonal principal: '
!read*, a(1:n)
!print*,

!print*,
!print*, 'Introduce a diagonal superior: '
!read*, b(1:n-1)
!print*,

!print*,
do i =1,n-1
  b(i) = 3
end do
do i =1,n
  a(i) = 1
end do
do i =2,n
  c(i) = 2
end do
!read*, c(2:n)
!print*,

do i =1,n
  r(i) = 4
end do

print*,
print*, 'Diagonal principal: ',a(1:n)
print*, 'Diagonal superior: ', b(1:n-1)
print*, 'Diagonal inferior ', c(2:n)
print*, 'Segundo miembro: ',r(1:n)
print*,

a_copia = a
b_copia = b
c_copia = c
r_copia = r

do i =2,n
  c(i)=c(i)/a(i-1)
  a(i)=a(i)-c(i)*b(i-1)
end do

do i=2,n
  r(i)=r(i)-c(i)*r(i-1)
end do

r(n)=r(n)/a(n)

print*,
print*,18,r(18)
print*,19,r(19)
print*,20,r(20)
print*,

do i=n-1,1,-1
  r(i)= (r(i)-b(i)*r(i+1))/a(i)
end do

print*,
print*, 'Vector r (Solucion): '
print*,

print*,'Penultimo z',c(2)
print*,'Ultimo z',c(n)
print*,'Primer x',a(1)
print*,'Segundo x',a(2)
print*,'Penultimo y',b(n-2)
print*,'Ultimo y',b(n-1)

do i =1,3
  print*,i,r(i)
end do

do i=1,n
  deter = deter * a(i)
end do

print*,'Deter',deter

print*,
print*, r
print*,

call residuotri(a_copia, c_copia, b_copia, r, r_copia, res)

end program
