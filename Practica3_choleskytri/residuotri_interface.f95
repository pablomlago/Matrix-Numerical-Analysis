module residuotri_interface
  interface
    subroutine residuotri(ad, al, au, u, b, r)
      real, dimension(:), intent(in) :: ad, al, au, u, b
      real, dimension(:), intent(out) :: r
    end subroutine
  end interface
end module
