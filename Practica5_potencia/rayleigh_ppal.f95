program rayleigh_ppal !inicio del programa rayleigh_ppal

  use datasissim_interface
  use rayleigh_interface
  use residuo_interface

  implicit none

  real, dimension(:,:), allocatable :: a
  real, dimension(:), allocatable :: u, r

  integer :: n, nmaxit, ier
  real :: xlam, eps

  print*
  print*, 'Introduce o orde da matriz: '
  read*, n
  print*

  print*
  print*, 'O orde introduce e: ', n
  print*

  allocate(a(n,n), u(n), r(n))

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

  call rayleigh(a, u, xlam, eps, nmaxit, ier)

  print*, 'Un vector propio e: ', u

  print*, 'O autovalor dominante e ', xlam

  call residuo(a, u, xlam, r)

end program
