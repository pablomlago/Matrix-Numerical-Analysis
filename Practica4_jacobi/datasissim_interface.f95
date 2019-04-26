module datasissim_interface
  interface
    subroutine datasissim(a, b)
      real, dimension(:,:), intent(out) :: a
      real, dimension(:), intent(out) :: b
    end subroutine
  end interface
end module
