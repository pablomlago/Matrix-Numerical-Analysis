module gaussb_interface
  interface
    subroutine gaussb(a, b, deter)
      real, dimension(:,:), intent(inout) :: a
      real, dimension(:), intent(inout) :: b
      real, intent(inout) :: deter
    end subroutine
  end interface
end module
