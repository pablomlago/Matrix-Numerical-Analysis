module tridiagxvector_interface
  interface
    subroutine tridiagxvector(ad, al, au, v, w)
      real(8), dimension(:), intent(in) :: ad, al, au, v
      real(8), dimension(:), intent(out) :: w
    end subroutine
  end interface
end module
