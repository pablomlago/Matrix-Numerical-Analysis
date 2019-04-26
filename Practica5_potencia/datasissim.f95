subroutine datasissim(a) !subrutina datassim

!declaracion de variables

!declaracion de la variable dimensionada a
!indicamos con intent(out) que es un parametro de salida
real, dimension(:,:), intent(out) :: a

!declaracion de las variables auxiliares n e i
integer :: n, i

! damos a n el valor del tamaño de a
!usamos la funcion  size que devuelve el tamaño de una variable dimensionada
n = size(a(1,:))

a = 0 !inecializamos a al primer natural

!entrada de datos

!solicitamos al usuario que introduzaca la matriz a
print*
print*, 'Introduza matriz A:' !te sale esto por pantalla

do i=1,n !desde 1 hasta el tamaño de la matriz
  !IMPORTANTE sale solo lo primero por pantalla, lo segundo no sale
  !saldrá el valor de i en esa iteración
  print*, 'Fila :', i
  !leemos la fila introducida por el usuario  en la fila i de la matriz a
  read*, a(i,1:n)
end do !se acaba (finaliza) el bucle

!imprimimos la matriz A por pantalla para que el usuario verifique
!que introdujo los datos correctamente
print*, 'A matriz A e: '
!empieza un nuevo bucle, y con el se abre un nuevo mundo de
!oportunidades para operar y crecer
do i=1,n ! desde 1 hasta el tamaño de la matriz a
  print*, a(i,:) !imprimimos la fila i de la matriz
end do

end subroutine ! fiin de la subrutina
!el final de esta subrutina no debe llevarnos a pensar equívocamente
!que nuestro trabajo está acabado, pues aún nos queda todo un programa
!que escribir. Nuestro viaje aquí aún acaba de comenzar
