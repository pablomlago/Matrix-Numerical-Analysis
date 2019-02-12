program sistu_ppal

interface

  subroutine leer_mat(a, b, u)
    real, dimension(:,:), intent(inout) :: a
    real, dimension(:), intent(inout) :: b
    real, dimension(:), intent(inout) :: u
  end subroutine leer_mat

  subroutine sistu(a, b, u)
    real, dimension(:,:), intent(in) :: a
    real, dimension(:), intent(in) :: b
    real, dimension(:), intent(out) :: u
  end subroutine sistu

end interface

real, dimension(:,:), allocatable :: a
real, dimension(:), allocatable :: b
real, dimension(:), allocatable :: u
real, dimension(:), allocatable :: r

call leer_mat(a, b, u)
call sistub(a, b, u)

print*,
print*, 'Vector u: '
print*,

print*,
print*, u
print*,

!if (allocated(a)) deallocate(a, stat=err)

!if (allocated(b)) deallocate(b, stat=err)

!if (allocated(u)) deallocate(u, stat=err)

end program
