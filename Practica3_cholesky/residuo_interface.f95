module residuo_interface
  interface
    subroutine residuo(a, b, u, r)
      real(8), dimension(:,:), intent(in) :: a
      real(8), dimension(:), intent(in) :: b
      real(8), dimension(:), intent(in) :: u
      real(8), dimension(:), intent(inout) :: r
    end subroutine
  end interface
end module
