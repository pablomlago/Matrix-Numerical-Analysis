subroutine sistupf(a, b, l, u)

implicit none

real, dimension(:,:), intent(in) :: a
real, dimension(:), intent(in) :: b
real, dimension(:), intent(out) :: u

integer, dimension(:), intent(in) :: l

integer :: ln, li

integer :: n, i, j, p

n = size(b)

ln = l(n)

u(n) = b(ln)/a(ln,n)

do i = n-1, 1, -1

  li = l(i)
  u(i) = b(li)
  do j = i+1, n
    u(i) = u(i) - a(li,j)*u(j)
  enddo

  u(i) = u(i)/a(li,i)
enddo

end subroutine
