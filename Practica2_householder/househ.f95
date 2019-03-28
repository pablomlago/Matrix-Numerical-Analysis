subroutine househ(a, b, deter)
  real, dimension(:,:), intent(inout) :: a
  real, dimension(:), intent(inout) :: b
  real, intent(out) :: deter

  integer :: n, i, j, k
  integer :: sigma

  real :: alpha, beta, p, q

  n = size(b)

  deter = 1

  sigma = 1

  do k=1, n-1
    alpha = 0

    do i = k, n
      alpha = alpha + a(i,k)*a(i,k)
    end do

    alpha = sqrt(alpha)

    alpha = -sign(1.,a(k,k))*alpha

    beta = alpha*(alpha - a(k,k))

    a(k,k) = a(k,k) - alpha

    deter = deter*a(k,k) !hai que cambiar signo

    do j= k+1, n
      q = 0

      do i=k, n
        q = q + a(i,k)*a(i,j)
      end do

      p = q/beta

      do i= k, n
        a(i,j) = a(i,j) - p*a(i,k)
      end do
    end do

    q = 0

    do i=k,n
      q = q + a(i,k)*b(i)
    end do

    p = q/beta

    do i=k,n
      b(i) = b(i) - p*a(i,k)
    end do

    a(k,k) = alpha

    sigma = sigma * (-1)

end do

  deter = deter*sigma

end subroutine
