subroutine residuotri(ad, al, au, u, b, r)

  use tridiagxvector_interface

  implicit none

  real, dimension(:), intent(in) :: ad, al, au, u, b
  real, dimension(:), intent(out) :: r

  integer :: n

  call tridiagxvector(ad, al, au, u, r)
  r = r - b

  print*,
  print*, 'Residuo: ', sqrt(dot_product(r,r))
  print*,

end subroutine
