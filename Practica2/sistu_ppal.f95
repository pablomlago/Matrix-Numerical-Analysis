program sistu_ppal

interface
  subroutine leer_mat(a, b, u)
    implicit none
    real, dimension(:,:), intent(inout) :: a
    real, dimension(:), intent(inout) :: b
    real, dimension(:), intent(inout) :: u
  end subroutine leer_mat

  subroutine sistu(a, b, u)
    implicit none
    real, dimension(:,:), intent(in) :: a
    real, dimension(:), intent(in) :: b
    real, dimension(:), intent(out) :: u
  end subroutine sistu

  subroutine residuo
    implicit none
    real, dimension(:,:), intent(in) :: a
    real, dimension(:), intent(in) :: b
    real, dimension(:), intent(in) :: u
    real, dimension(:), intent(inout) :: r
  end subroutine

end interface

real, dimension(:,:) ::  a
real, dimension(:) :: b
real, dimension(:) :: u

call leer_mat(a, b, u)
call sistu(a, b, u)

do i=1:size(b)
  print*, b(i)
enddo

if (allocated(a)) deallocate(a, stat=err)

if (allocated(b)) deallocate(b, stat=err)

if (allocated(u)) deallocate(u, stat=err)

end program
