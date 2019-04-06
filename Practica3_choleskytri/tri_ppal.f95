program tri_ppal

implicit none

real, dimension(:), allocatable :: a,b,c,r,w,u

integer :: n, i, j

print*, 'Introduce o orde do sistema: '
read*, n
print*
print*, 'O orde introducido e: ', n
print*

allocate(a(n), b(2:n), r(n), w(n), u(n))

print*,
print*, 'Introduce a diagonal principal: '
read*, a(1:n)
print*,

print*,
print*, 'Introduce a diagonal inferior: '
read*, b(2:n)
print*,

print*, 'Introduce el segundo miembro: '
read*, r(1:n)
print*,

print*,
print*, 'Diagonal principal: ',a(1:n)
print*, 'Diagonal inferior ', b(2:n)
print*, 'Segundo miembro: ',r(1:n)
print*,

a(1) = sqrt(a(1))

do i=2,n
  b(i) = b(i)/a(i-1)
  a(i) = sqrt(a(i)-b(i)*b(i))
end do

print*,
print*, 'Diagonal principal: ',a(1:n)
print*, 'Diagonal inferior ', b(2:n)
print*, 'Segundo miembro: ',r(1:n)
print*,

w(1) = r(1)/a(1)

do i=2,n
print*, r(i)
print*, w(i-1)
print*, a(i)
  w(i)=(r(i)- b(i)*w(i-1))/a(i)
end do

print*, 'Vector w:'
print*, w
print*,

u(n) = w(n)/a(n)

do i=n-1,1,-1
  u(i)= (w(i)-b(i+1)*u(i+1))/a(i)
end do

print*,
print*, 'Vector u (Solucion): '
print*,

print*,
print*, u
print*,


end program
