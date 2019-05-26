subroutine residuo(a, b, u, r)

implicit none

real(8), dimension(:,:), intent(in) :: a
real(8), dimension(:), intent(in) :: b
real(8), dimension(:), intent(in) :: u

real(8), dimension(:), intent(inout) :: r

integer :: n, i

n = size(b)

r = matmul(A,u) - b

print*,
print*, 'Residuo: ', sqrt(dot_product(r,r))
print*,

end subroutine
