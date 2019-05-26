module sistu_interface
  interface
    subroutine sistu(a, b, u)
      real(8), dimension(:,:), intent(in) :: a
      real(8), dimension(:), intent(in) :: b
      real(8), dimension(:), intent(out) :: u
    end subroutine
  end interface
end module
