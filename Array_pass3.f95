program array_pass3
    implicit none
    
    real, dimension(10) :: a, b
    integer :: i, asize, bsize

    a(1:7) = 5.0 ! a(1) to a(7) assigned 5.0
    a(8:) = 0.0 ! rest are 0.0
    b(2:10:2) = 3.9 ! bwt from 2 to 10 set 3.9 at every 2 numbers
    b(1:9:2) = 2.5 ! bwt from 1 to 9 set 2.5 at every 2 numbers

    ! display
    asize = size(a)
    bsize = size(b)

    do i = 1, asize
        print *, a(i)
    end do
    
    print *, "---------------------------------------"

    do i = 1, bsize
        print *, b(i)
    end do

    call system("PAUSE")

end program array_pass3