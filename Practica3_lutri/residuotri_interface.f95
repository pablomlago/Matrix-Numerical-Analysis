module residuotri_interface
  interface
    subroutine residuotri(ad, al, au, u, b, r)
      real(8), dimension(:), intent(in) :: ad, al, au, u, b
      real(8), dimension(:), intent(out) :: r
    end subroutine
  end interface
end module
