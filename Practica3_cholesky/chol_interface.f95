module chol_interface
  interface
    subroutine chol(a, deter)
      implicit none
      real, dimension(:,:), intent(inout) :: a
      real, intent(out) :: deter
    end subroutine
  end interface
end module
