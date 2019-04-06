program tri_ppal

implicit none

real(8), dimension(:), allocatable :: a,b,c,r

integer :: n, i, j

print*, 'Introduce o orde do sistema: '
read*, n
print*
print*, 'O orde introducido e: ', n
print*

allocate(a(n), b(n-1), c(2:n), r(n))

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
allocate(a(n), b(n-1), c(2:n), r(n))
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


end program
