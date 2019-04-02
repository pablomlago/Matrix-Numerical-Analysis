module sistl_interface
  interface
    subroutine sistl(a, b, w)
      real, dimension(:,:), intent(in) :: a
      real, dimension(:), intent(in) :: b
      real, dimension(:), intent(out) :: w
    end subroutine
  end interface
end module
