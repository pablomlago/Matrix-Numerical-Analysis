subroutine potinv (a, q, u, v, xlam, eps, nmaxit, ier)

  use lu_interface
  use sistu_interface
  use sistl_interface

  implicit none

  real, dimension(:,:), intent(inout) :: a
  real, intent(in) :: q
  real, dimension(:), intent(out) :: u, v
  real, intent(inout) :: xlam
  real, intent(in) :: eps
  integer, intent(in) :: nmaxit
  integer, intent(out) :: ier

  real,dimension(:), allocatable :: w

  integer :: n, iter, i, j
  real :: xn , s, xlam1, xlam2, deter

  n = size(a(1,:))

  allocate(w(n))

  do i=1,n
    a(i,i) = a(i,i) - q
  end do

  call lu(a, deter, ier)

  if(ier .ne. 0) then
    ier = 1
    return
  end if

  u = 0
  u(1) = 1

  do iter = 1, nmaxit

    call sistl(a,u,w)
    call sistu(a,w,v)

    s = 0
    xn = 0

    do i=1,n
      s = s + u(i)*v(i)
      xn = xn + v(i)*v(i)
    end do

    xn = sqrt(xn)

    do i=1,n
      u(i) = v(i)/xn
    end do

    xlam = 1./(s+q)

    if(iter .ne. 1) then
      if(abs(xlam - xlam1) .le. eps) then
        ier = 3
        return
      end if
    end if
    xlam1 = xlam
  end do

  ier = 4

end subroutine
