program tridiagxvector

implicit none

integer:: n,i
real, allocatable, dimension(:):: v, w, ad, al, au

print*, 'Dame a dimension da matriz'
read*, n

allocate(ad(n), al(2:n), au(1:n-1), v(n), w(n))

print*, 'Dame a diagonal principal'
read*, ad(1:n)

print*, 'Dame a diagonal superior'
print*, au(1:n-1)

print*, 'Dame a diagonal inferior'
print*, al(2:n)

print*, 'Dame o vector'
print*, v(1:n)

w = 0
w(1:n) = ad*v(1:n)
w(1:n-1)=w(1:n-1) + au*v(1: n-1)
w(2:n) = w(2:n) + al*v(2:n)

print*, 'Vector w: ', w

end program
