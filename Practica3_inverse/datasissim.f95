subroutine datasissim(a)

real, dimension(:,:), intent(out) :: a

integer :: n, i

n = size(a(1,:))

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

end subroutine
