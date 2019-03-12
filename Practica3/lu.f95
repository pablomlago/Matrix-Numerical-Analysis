subroutine lu(a, deter)
  implicit none

  real, dimension(:,:), intent(inout) :: a
  real, intent(out) :: deter

  integer :: n, j, i, r, k

  n = size(a(1,:))
  deter = 1

  do r = 2,n
    if(abs(a(1,1)) < 1.e-12) then
      print*, 'ERROR!'
      stop
    end if
    a(r,1) = a(r,1)/a(1,1)
  end do

  do i=2,n
    do j=i,n
      do k=1,i-1
        a(i,j) = a(i,j) - a(i,k)*a(k,j)
      end do
    end do

    do r=i+1,n
      do k=1,i-1
        a(r,i) = a(r,i) - a(r,k)*a(k,i)
      end do
      if(abs(a(i,i)) < 1.e-12) then
        print*, 'ERROR!'
        stop
      end if
      a(r,i) = a(r,i)/a(i,i)
    end do
  end do
end subroutine
