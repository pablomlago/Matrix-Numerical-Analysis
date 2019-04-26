program rayleigh_ppal !inicio del programa rayleigh_ppal

  use datasissim_interface
  use rayleigh_interface

  implicit none

  real, dimension(:,:), allocatable :: a

  integer :: n, nmaxit, ier
  real :: xlam, eps

  print*
  print*, 'Introduce o orde da matriz: '
  read*, n
  print*

  print*
  print*, 'O orde introduce e: ', n
  print*

  allocate(a(n,n))

  call datasissim(a)

  print*
  print*, 'Introduce o numero maximo de iteracions: '
  read*, nmaxit
  print*

  print*
  print*, 'O numero maximo de iteracions e: ', nmaxit
  print*

  print*
  print*, 'Introduce o epsilon para o test de parada: '
  read*, eps
  print*

  print*
  print*, 'O epsilon introducido e: ', eps
  print*

  call rayleigh(a, xlam, eps, nmaxit, ier)

  print*, 'O autovalor dominante e ', xlam

end program
