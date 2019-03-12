module lu_interface
  interface
    subroutine lu(a, deter)
      real, dimension(:,:), intent(in) :: a
      real, intent(out) :: deter
    end subroutine
  end interface
end module
