subroutine residuo(a, b, u, r)

implicit none

real, dimension(:,:), intent(in) :: a
real, dimension(:), intent(in) :: b
real, dimension(:), intent(in) :: u

real, dimension(:), intent(inout) :: r

integer :: n, i

n = size(b)

r = matmul(A,u) - b

print*,
print*, 'Residuo: ', sqrt(dot_product(r,r))
print*,

end subroutine
