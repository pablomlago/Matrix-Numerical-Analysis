module datasissim_interface
  interface
    subroutine datasissim(a)
      real, dimension(:,:), intent(out) :: a
    end subroutine
  end interface
end module
