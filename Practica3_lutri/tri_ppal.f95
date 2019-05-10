program tri_ppal

use residuotri_interface

implicit none

real, dimension(:), allocatable :: a, a_copia, b, b_copia,c ,c_copia,r, r_copia, res

integer :: n, i, j

print*, 'Introduce o orde do sistema: '
read*, n
print*
print*, 'O orde introducido e: ', n
print*

allocate(a(n), a_copia(n), b(n-1), b_copia(n-1), c_copia(2:n), c(2:n), r(n), r_copia(n), res(n))

print*,
print*, 'Introduce a diagonal principal: '
read*, a(1:n)
print*,

print*,
print*, 'Introduce a diagonal superior: '
read*, b(1:n-1)
print*,

print*,
print*, 'Introduce a diagonal inferior: '
read*, c(2:n)
print*,

print*,
print*, 'Introduce el segundo miembro: '
read*, r(1:n)
print*,

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

do i=n-1,1,-1
  r(i)= (r(i)-b(i)*r(i+1))/a(i)
end do

print*,
print*, 'Vector r (Solucion): '
print*,

print*,
print*, r
print*,

call residuotri(a_copia, c_copia, b_copia, r, r_copia, res)

end program
