subroutine residuo

implicit none

real, dimension(:,:), intent(in) :: a
real, dimension(:), intent(in) :: b
real, dimension(:), intent(in) :: u

real, dimension(:), intent(inout) :: r

r = A*u - b

end subroutine
