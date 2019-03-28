subroutine sistl(a, b, w)

implicit none

real, dimension(:,:), intent(in) :: a
real, dimension(:), intent(in) :: b
real, dimension(:), intent(out) :: w

integer :: n, i, j

n = size(b)

!w(1) = b(1)/a(1,1)
w(1) = b(1)

do i = 2,n
  w(i) = b(i)
  do j = 1,i-1
    w(i) = w(i) - a(i,j)*w(j)
  enddo

  !w(i) = w(i)/a(i,i)
enddo

end subroutine
