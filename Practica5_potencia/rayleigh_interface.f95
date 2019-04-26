module rayleigh_interface
  interface
    subroutine rayleigh(a, xlam, eps, nmaxit, ier)
      implicit none
      real, dimension(:,:), intent(in) :: a
      real, intent(inout) :: xlam
      real, intent(in) :: eps
      integer, intent(in) :: nmaxit
      integer, intent(inout) :: ier
    end subroutine
  end interface
end module
