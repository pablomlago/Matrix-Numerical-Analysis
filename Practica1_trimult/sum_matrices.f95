program sum_matrices

implicit none

integer:: m, n, i, j
real, allocatable, dimension(:,:):: a, b, s

print*, 'Numero de filas da matriz'
read*, m
print*, 'Numero de columnas da matriz'
read*, n

allocate(a(m,n), b(m,n), s(m,n))

do i=1,m
  do j=1,n
    print*, 'A[ ', i, ' , ', j, ' ]: '
    read*, a(i,j)
  end do
end do

do i=1,m
  do j=1,n
    print*, 'B[ ', i, ' , ', j, ' ]: '
    read*, b(i,j)
  end do
end do

s = a + b

do i=1,m
  do j=1,n
    print*, 'S[ ', i, ' , ', j, ' ]: ', s(i,j)
  end do
end do

end program
