subroutine sistu(a, b, u)

implicit none

real, dimension(:,:), intent(in) :: a
real, dimension(:), intent(in) :: b
real, dimension(:), intent(out) :: u

integer :: n, i, j

n = size(b)

!u(n) = b(n)/a(n,n)
u(n) = b(n)

do i = n-1, 1, -1
  u(i) = b(i)
  do j = i+1, n
    u(i) = u(i) - a(i,j)*u(j)
  enddo

  !u(i) = u(i)/a(i,i)
enddo

end subroutine
