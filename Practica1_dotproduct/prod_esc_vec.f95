program prod_escalar

implicit none

integer:: n, i
real, allocatable:: v(:), w(:)
real:: pe1, pe2, pe3

print*, 'Dame o tamano dos vectores'
read*, n

print*, 'O orde do sistema e '
print*, n

allocate(v(n), w(n))

print*,
print*, 'Introduce o vector v'
read*, v

print*, 'O vector v e:'
print*, v

print*,
print*, 'Introduce o vector w'
read*, w

print*, 'O vector w e:'
print*, w

pe1 = dot_product(v,w)

pe2 = 0
do i=1,n
  pe2 = pe2 + v(i)*w(i)
end do

pe3 = sum(v*w)

print*, 
print*, 'Produto escalar 1: ', pe1
print*, 'Produto escalar 2: ', pe2
print*, 'Produto escalar 3: ', pe3

end program
