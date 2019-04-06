module residuo_interface
  interface
    subroutine residuo(a, b, u, r)
      real, dimension(:,:), intent(in) :: a
      real, dimension(:), intent(in) :: b
      real, dimension(:), intent(in) :: u
      real, dimension(:), intent(inout) :: r
    end subroutine
  end interface
end module
