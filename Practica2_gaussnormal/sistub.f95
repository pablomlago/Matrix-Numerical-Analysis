subroutine sistub(a, b, u)

implicit none

real, dimension(:,:), intent(in) :: a
real, dimension(:), intent(in) :: b
real, dimension(:), intent(out) :: u

integer :: n, i, j

n = size(b)

u = b

do i = n, 1, -1
  u(i) = u(i)/a(i,i)
  u(1:i-1) = u(1:i-1) - a(1:i-1, i)*u(i)
end do

end subroutine
