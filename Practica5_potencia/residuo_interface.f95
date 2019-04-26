module residuo_interface
  interface
    subroutine residuo(a, u, lambda, r)

      implicit none

      real, dimension(:,:), intent(in) :: a
      real, dimension(:), intent(in) :: u
      real, intent(out) :: lambda

      real, dimension(:), intent(inout) :: r
    end subroutine
  end interface
end module
