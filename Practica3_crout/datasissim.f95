subroutine datasissim(a, b)

real, dimension(:,:), intent(out) :: a
real, dimension(:), intent(out) :: b

integer :: n, i

n = size(b)

a = 0

print*
print*, 'Introduza matriz triangular inferior A (por filas parte inferior):'

do i= 1, n
  print*, 'Columna :', i
  read*, a(i:n,i)
end do

print*, 'A matriz A e: '

do i=1,n
  print*, a(i,1:n)
end do

print*
print*, 'Introduza o termino independente b: '
read*, b

print*, 'O termo independente b e: '
print*, b
print*,

end subroutine
