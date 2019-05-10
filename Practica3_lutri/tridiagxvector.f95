subroutine tridiagxvector(ad, al, au, v, w)

implicit none

real, dimension(:), intent(in) :: ad, al, au, v
real, dimension(:), intent(out) :: w

integer:: n

n = size(ad)

w = 0

w(1:n) = ad*v(1:n)
w(1:n-1)=w(1:n-1) + au*v(2: n)
w(2:n) = w(2:n) + al*v(1:n-1)

print*,
print*, 'Tridiag: ', w
print*,

end subroutine
