subroutine sistl(a, b, w)

implicit none

real(8), dimension(:,:), intent(in) :: a
real(8), dimension(:), intent(in) :: b
real(8), dimension(:), intent(out) :: w

integer :: n, i, j

n = size(b)

print*, 'O termo independente b e: '
print*, b
print*,

w(1) = b(1)/a(1,1)

do i = 2,n
  w(i) = b(i)
  do j = 1,i-1
    w(i) = w(i) - a(i,j)*w(j)
  enddo

  w(i) = w(i)/a(i,i)
enddo

end subroutine
