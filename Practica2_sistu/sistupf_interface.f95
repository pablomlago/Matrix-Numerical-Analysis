module sistupf_interface
  interface
    subroutine sistupf(a, b, l, u)
      real, dimension(:,:), intent(in) :: a
      real, dimension(:), intent(in) :: b
      real, dimension(:), intent(out) :: u

      integer, dimension(:), intent(in) :: l
    end subroutine
  end interface
end module
