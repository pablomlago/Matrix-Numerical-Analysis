program tridiagxvector

implicit none

integer:: n,i

real, allocatable, dimension(:) :: v, w, ad, al, au

print*, 'Dame a dimension da matriz'
read*, n

print*,
print*, 'O orde do sistema e: '
print*, n
print*,

allocate(ad(n), al(2:n), au(1:n-1), v(n), w(n))

print*, 'Dame a diagonal principal'
read*, ad(1:n)

print*,
print*, ' A diagonal principal e :'
print*, ad
print*,

print*, 'Dame a diagonal superior'
read*, au(1:n-1)

print*,
print*, ' A diagonal superior e :'
print*, au(1:n-1)
print*,

print*, 'Dame a diagonal inferior'
read*, al(2:n)

print*,
print*, ' A diagonal inferior e :'
print*, al(2:n)
print*,

print*, 'Dame o vector'
read*, v(1:n)

print*,
print*, ' O vector e :'
print*, v(1:n)
print*,

w = 0
w(1:n) = ad*v(1:n)
w(1:n-1)=w(1:n-1) + au*v(2: n)
w(2:n) = w(2:n) + al*v(1:n-1)

print*,
print*, 'Vector w: ', w
print*,

end program
