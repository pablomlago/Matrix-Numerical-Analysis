program potinv_ppal !inicio del programa rayleigh_ppal

  use datasissim_interface
  use potinv_interface
  use residuo_interface

  implicit none

  real, dimension(:,:), allocatable :: a, a_copia
  real, dimension(:), allocatable :: u, v, r

  integer :: n, nmaxit, ier
  real :: xlam, eps, q

  print*
  print*, 'Introduce o orde da matriz: '
  read*, n
  print*

  print*
  print*, 'O orde introduce e: ', n
  print*

  allocate(a(n,n), a_copia(n,n), u(n), v(n), r(n))

  call datasissim(a)

  a_copia = a

  print*
  print*, 'Introduce a aproximacion do autovalor: '
  read*, q
  print*

  print*
  print*, 'A aproximacion do autovalor introducido e: ', q
  print*

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

  call potinv(a, q, u, v, xlam, eps, nmaxit, ier)

  print*, 'Un vector propio e: ', u

  print*, 'O autovalor dominante e ', xlam

  call residuo(a_copia, u, xlam, r)

end program
