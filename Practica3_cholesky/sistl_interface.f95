module sistl_interface
  interface
    subroutine sistl(a, b, w)
      real(8), dimension(:,:), intent(in) :: a
      real(8), dimension(:), intent(in) :: b
      real(8), dimension(:), intent(out) :: w
    end subroutine
  end interface
end module
