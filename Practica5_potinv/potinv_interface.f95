module potinv_interface
  interface
    subroutine potinv(a, q, u, v, xlam, eps, nmaxit, ier)
      implicit none
      real, dimension(:,:), intent(inout) :: a
      real, intent(in) :: q
      real, dimension(:), intent(out) :: u, v
      real, intent(inout) :: xlam
      real, intent(in) :: eps
      integer, intent(in) :: nmaxit
      integer, intent(out) :: ier
    end subroutine
  end interface
end module
