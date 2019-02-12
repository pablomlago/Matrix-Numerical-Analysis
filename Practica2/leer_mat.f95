subroutine leer_mat

real, dimension(:,:), intent(inout) :: a
real, dimension(:), intent(inout) :: b
real, dimension(:), intent(inout) :: u

integer :: n, i

open(10,file="input.in")

read(10,*) n

allocate(a(n,n), b(n), u(n))

u = 0

do i=1:n
  read(10,*) a(i,1:n)
end do

read(10,*) b

close(10)

end subroutine
