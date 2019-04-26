subroutine residuo(a, u, lambda, r)

implicit none

real, dimension(:,:), intent(in) :: a
real, dimension(:), intent(in) :: u
real, intent(out) :: lambda

real, dimension(:), intent(inout) :: r

integer :: n, i

n = size(a(1,:))

r = matmul(a,u) - lambda*u

print*,
print*, 'Residuo: ', sqrt(dot_product(r,r))
print*,

end subroutine
