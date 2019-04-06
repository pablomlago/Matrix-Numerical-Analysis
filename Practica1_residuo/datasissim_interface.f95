module datasissim_interface
  interface
    subroutine datasissim(a, b, u)
      real, dimension(:,:), intent(out) :: a
      real, dimension(:), intent(out) :: b
      real, dimension(:), intent(out) :: u
    end subroutine
  end interface
end module
