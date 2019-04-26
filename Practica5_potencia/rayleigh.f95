subroutine rayleigh (a, xlam, eps, nmaxit, ier)

  implicit none

  real, dimension(:,:), intent(in) :: a
  real, intent(inout) :: xlam
  real, intent(in) :: eps
  integer, intent(in) :: nmaxit
  integer, intent(inout) :: ier

  real,dimension(:), allocatable :: u, v

  integer :: n, iter, i, j
  real :: xn , s, xlam1, xlam2

  n = size(a(1,:))

  allocate(u(n), v(n))

  u = 0
  u(1) = 1

  do iter= 1, nmaxit
      do i =1, n
        v(i) = 0
        do j = 1,n
          v(i) = v(i) + a(i,j)*u(j)
        end do
      end do
      s = 0
      xn = 0
      do i =1,n
          s = s + u(i)*v(i)
          xn = xn + v(i)*v(i)
      end do
      xn = sqrt(xn)
      do i = 1, n
        u(i) = v(i)/xn
      end do
      xlam2 = s
      if(iter .ne. 1) then
        if(abs(xlam2 - xlam1)/(abs(xlam1) + 1)<= eps) then
          xlam = xlam2
          ier = 1
          return !salimos
        end if
      end if
      xlam1 = xlam2
  end do
  xlam = xlam2
  ier = 2

end subroutine
