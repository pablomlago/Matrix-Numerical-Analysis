subroutine gaussb(a, b, deter)
  implicit none

  real, dimension(:,:), intent(inout) :: a
  real, dimension(:), intent(inout) :: b
  real, intent(inout) :: deter

  real :: factor, piv

  integer :: n, k, i, j

  n = size(b)
  deter = 1

  do k=1,n-1
    piv=a(k,k)
    if(abs(piv) < 1.e-12) then
      print*, 'Pivote nulo na etapa: ', k
      stop
    end if

    deter = deter*piv

    a(k+1:n,k) = a(k+1:n,k)/piv
    do j=k+1,n
      a(k+1:n,j) = a(k+1:n,j)-a(k+1:n,k)*a(k,j)
    end do
    b(k+1:n) = b(k+1:n)-a(k+1:n,k)*b(k)

  end do

  if(abs(a(n,n)) < 1.e-12) then
    print*, 'Pivote nulo na etapa: ', n
    stop
  end if

  deter = deter*a(n,n)
end subroutine
