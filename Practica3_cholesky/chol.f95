subroutine chol(a, deter)
  implicit none

  real(8), dimension(:,:), intent(inout) :: a
  real(8), intent(out) :: deter

  integer :: n, i, j, k

  n = size(a(1,:))

  if(a(1,1) .le. 1.e-8) then
    print*, "A matriz pode non ser definida positiva"
    stop
  end if

  deter = a(1,1)
  a(1,1) = sqrt(a(1,1))



  do i=2,n
      a(i,1)=a(i,1)/a(1,1)
  end do

  do k =2,n
     do j=1,k-1
       a(k,k)=a(k,k)-a(k,j)*a(k,j)
     end do

     if(a(k,k) .le. 1.e-8) then
       print*, "A matriz pode ser non definida"
       stop
     end if
    deter=deter*a(k,k)
    a(k,k) = sqrt(a(k,k))

    do i=k+1,n
      do j=1,k-1
        a(i,k) = a(i,k) - a(i,j)*a(k,j)
      end do
      a(i,k) = a(i,k)/a(k,k)
    end do
    !deter = deter*a(k,k)
  end do

  print*, 'Fact Cholesky: '
  do i=1,n
    print*, a(i,:)
  end do
  print*,

end subroutine
