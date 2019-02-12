subroutine leer_mat(a, b ,u )

real, dimension(:,:), intent(inout), allocatable :: a
real, dimension(:), intent(inout), allocatable :: b
real, dimension(:), intent(inout), allocatable :: u

integer :: n, i

open(10,file="input.in")

read(10,*) n

print*,
print*, 'Dimension: ', n
print*,

allocate(a(n,n), b(n), u(n))

u = 0

print*,
print*, 'Matriz A: '
print*,

do i=1,n
  read(10,*) a(i,1:n)
  print*, a(i, 1:n)
enddo

print*,

read(10,*) b

print*, 'Vector b: '

print*,
print*, b
print*,

close(10)

end subroutine
