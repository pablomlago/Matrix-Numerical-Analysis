module croutsim_interface
  interface
    subroutine croutsim(a, deter)
      real, dimension(:,:), intent(inout) :: a
      real, intent(out) :: deter
    end subroutine
  end interface
end module
