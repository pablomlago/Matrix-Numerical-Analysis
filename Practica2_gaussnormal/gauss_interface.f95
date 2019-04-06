module gauss_interface
  interface
    subroutine gauss(a, b, deter)
      real, dimension(:,:), intent(inout) :: a
      real, dimension(:), intent(inout) :: b
      real, intent(inout) :: deter
    end subroutine
  end interface
end module
