subroutine gausspp(a, b, l, deter)
  implicit none

  real, dimension(:,:), intent(inout) :: a
  real, dimension(:), intent(inout) :: b
  integer, dimension(:), intent(inout) :: l
  real, intent(out) :: deter

  real :: piv, z
  integer :: i, j, k, m, n, p, li, lk

  n = size(b)

  deter = 1

  l = (/(i,i=1,n)/)

  do k=1, n-1
    piv=a(l(k),k)
    p = k
    do i = k+1, n
      if(abs(piv) < abs(a(l(i), k))) then
        piv = a(l(i), k)
        p = i
      end if
    end do

    if(abs(piv) < 1.e-12) then
      print*, 'Pivote nulo na etapa: ', k
      print*, 'A matriz do sistema e singular! '
      stop
    end if

    deter=deter*piv

    if(p /= k) then

      deter = -deter

      m = l(k)
      l(k) = l(p)
      l(p) = m
    end if

    piv = a(l(k), k)
    lk = l(k)

    do i=k+1, n
      li = l(i)
      z=a(li,k)/piv

      do j=k+1,n
        a(li, j) = a(li, j) - z*a(lk, j)
      end do

      b(li)=b(li)-z*b(lk)
    end do

  end do
    piv = a(l(n),n)

    if(abs(piv)<1.e-12) then
      print*, 'Pivote nulo na etapa: ', n
      print*, 'A matriz do sisema e singular!'
      stop
    end if

   deter = deter*piv

end subroutine
