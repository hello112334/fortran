program dynamicArray
    implicit none

    ! rank is 2, but size not known
    real, dimension (:,:), allocatable :: darray

    integer :: s1, s2
    integer :: i, j

    print *, "Enter size of array: "
    read *, s1, s2
    
    print *, "Create a ", s1, "*", s2, " array."
    
    ! allocate 
    allocate(darray(s1, s2))

    print *, "Size of darray: ", size(darray)

    do i = 1, s1
        do j = 1, s2
            darray(i, j) = i * j
            print *, "darray(",i,",",j,") = ", darray(i, j)
        end do
        
    end do

    ! release
    deallocate(darray)

    call system("PAUSE")
end program dynamicArray