module datasissim_interface !modulo datasissim_interface
  interface !interfaz
    subroutine datasissim(a) !subrutina a
      !declaracion de la variable dimensionada de salida a
      real, dimension(:,:), intent(out) :: a
    end subroutine !fin de la subrutina
  end interface !fin de la interfaz
end module !fin del modulo
