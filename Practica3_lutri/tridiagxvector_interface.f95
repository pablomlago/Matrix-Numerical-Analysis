module tridiagxvector_interface
  interface
    subroutine tridiagxvector(ad, al, au, v, w)
      real, dimension(:), intent(in) :: ad, al, au, v
      real, dimension(:), intent(out) :: w
    end subroutine
  end interface
end module
