subroutine leer_mat(a, b)

real, dimension(:,:), intent(out), allocatable :: a
real, dimension(:), intent(out), allocatable :: b

integer :: n, i

n = size(b)

print*,
print*, 'Matriz A: '
print*,

do i=1,n
  read*, a(i,1:n)
  print*, a(i, 1:n)
enddo

print*,

read*, b

print*, 'Vector b: '

print*,
print*, b
print*,

end subroutine
