module jacobi_interface
  interface
    subroutine jacobi(a, b, u, eps, nmaxit, ier)
      implicit none

      real, dimension(:,:) :: a
      real, dimension(:) :: b, u
      real :: eps
      integer nmaxit, ier
    end subroutine
  end interface
end module
