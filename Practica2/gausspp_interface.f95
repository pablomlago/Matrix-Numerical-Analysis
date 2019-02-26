module gausspp_interface
  interface
    subroutine gausspp(a, b, l, deter)
      real, dimension(:,:), intent(inout) :: a
      real, dimension(:), intent(inout) :: b
      integer, dimension(:), intent(inout) :: l
      real, intent(out) :: deter
    end subroutine
  end interface
end module
