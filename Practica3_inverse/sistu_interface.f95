module sistu_interface
  interface
    subroutine sistu(a, b, u)
      real, dimension(:,:), intent(in) :: a
      real, dimension(:), intent(in) :: b
      real, dimension(:), intent(out) :: u
    end subroutine
  end interface
end module
