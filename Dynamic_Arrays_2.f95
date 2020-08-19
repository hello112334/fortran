program whereStatement
    implicit none
    
    integer :: a(3, 5), i, j

    do i = 1, 3
        do j = 1, 5
            a(i, j) = j - i
        end do
    end do

    print *, "The A array"

    ! lbound/ubound → (Array , Dimension)
    do i = lbound(a, 1), ubound(a, 1)
        write (*, *) "a: " ,(a(i, j), j = lbound(a, 2), ubound(a, 2))
    end do

    ! a(i, j) < 0
    where(a < 0)
        a = 1
    ! a(i, j) >= 0
    elsewhere
        a = 5
    end where
    
    print *, "------------------------------------------------"
    print *, "The A array: "
    do i = lbound(a, 1), ubound(a, 1)
        write (*,*) (a(i, j), j = lbound(a, 2), ubound(a, 2))
    end do

    call system("PAUSE")

end program whereStatement



