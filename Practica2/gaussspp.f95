subroutine gausspp(a, b, deter)
  implicit none

  real, dimension(:,:), intent(inout) :: a
  real, dimension(:), intent(inout) :: b
  integer, dimension(:), intent(inout) :: ip
  real, intent(out) :: deter

  real :: piv, ipk
  integer :: i, j, k, n, ipiv, cont

  n = size(b)

  deter = 1

  ip = (/(i,i=1,n)/)

  cont = 0

  do k=1, n-1
    piv=a(ip(k),k)
    ipiv = k
    do i = k+1, n
      if(abs(piv) < abs(a(ip(i), k))) then
        piv = a(ip(i), k)
        ipiv = i
      end if
    end do

    if(abs(piv) < 1.e-12) then
      print*, 'Pivote nulo na etapa: ', k
      print*, 'A matriz do sistema e singular! '
      stop
    end if

    if(ipiv /= k) then
      ipk = ip(ipiv)
      ip(ipiv) = ip(k)
      ip(k) = ipk
      cont = cont + 1
    else
      ipk = ip(k)
    end if

    deter=deter*piv

    do i=k+1, n
      ipi = ip(i)
      a(ipi, k) = a(ipi, k)/piv

      do j=k+1,n
        a(ipi, j) = a(ipi, j) - a(ipi, k)*a(ipk, j)
      end do

      b(ipi)=b(ipi)-a(ipi,k)*b(ipk)
    end do
  end do
    piv = a(ip(n),n)

    if(abs(piv)<1.e-12) then
      print*, 'Pivote nulo na etapa: ', n
      print*, 'A matriz do sisema e singular!'
      stop
    end if

    deter=deter*piv*(-1)**cont
end subroutine
