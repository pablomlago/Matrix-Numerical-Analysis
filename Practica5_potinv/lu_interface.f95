module lu_interface
  interface
    subroutine lu(a, deter, ier)
      real, dimension(:,:), intent(in) :: a
      real, intent(out) :: deter
      integer, intent(out) :: ier
    end subroutine
  end interface
end module
