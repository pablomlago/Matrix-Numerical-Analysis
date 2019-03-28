module househ_interface
  interface
    subroutine househ(a, b, deter)
      real, dimension(:,:), intent(inout) :: a
      real, dimension(:), intent(inout) :: b
      real, intent(out) :: deter
    end subroutine
  end interface
end module
