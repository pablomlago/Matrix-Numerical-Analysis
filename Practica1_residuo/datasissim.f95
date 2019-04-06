subroutine datasissim(a, b, u)

real, dimension(:,:), intent(out) :: a
real, dimension(:), intent(out) :: b
real, dimension(:), intent(out) :: u

integer :: n, i

n = size(b)

a = 0

print*
print*, 'Introduza matriz A:'

do i=1,n
  print*, 'Fila :', i
  read*, a(i,1:n)
end do

print*, 'A matriz A e: '

do i=1,n
  print*, a(i,:)
end do

print*
print*, 'Introduza o termino independente b: '
read*, b

print*, 'O termo independente b e: '
print*, b
print*, 

print*
print*, 'Introduza o vector solucion u: '
read*, u

print*, 'O vector solucion u e: '
print*, u
print*, 

end subroutine
