program dataStatement
    implicit none
    
    integer :: a(5), b(3, 3), c(10), i, j
    data a /7,8,9,10,11/ ! a(1) ~ a(5)

    data b(1, :) /1, 1, 1/ ! b(1, 1) b(1, 2) b(1, 3)
    data b(2, :) /2, 2, 2/ ! b(2, 1) b(2, 2) b(2, 3)
    data b(3, :) /3, 3, 3/ ! b(3, 1) b(3, 2) b(3, 3)

    data (c(i), i=1, 10, 2) /4, 5, 6, 7, 8/ ! c(1) c(3) ... c(9)
    data (c(i), i=2, 10, 2) /5*2/ ! c(2) c(4) ... c(10)

    print *, "The A array: "
    do j = 1, 5
        print *, a(j)
    end do

    print *, "--------------------------------"

    print *, "The B array: "
    do i = lbound(b, 1), ubound(b, 1)
        write (*, *) (b(i, j), j = lbound(b, 2), ubound(b, 2) )
    end do

    print *, "--------------------------------"

    print *, "The C array: "
    do j = 1, 10
        print *, c(j)
    end do

    call system("PAUSE")

end program dataStatement