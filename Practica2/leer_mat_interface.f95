module leer_mat_interface
  interface
    subroutine leer_mat(a, b, u)
      real, dimension(:,:), intent(inout) :: a
      real, dimension(:), intent(inout) :: b
      real, dimension(:), intent(inout) :: u
    end subroutine leer_mat
  end interface
end module
