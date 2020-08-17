program array
    implicit none
    
    integer :: i
    real, dimension(5) :: numbers

    ! To create a 5 x 5 two-dimensional array of integers named matrix
    integer, dimension (5,5) :: matrix  

    ! You can also declare an array with some explicit lower bound
    real, dimension(2:6) :: numbers2
    integer, dimension (-3:2,0:4) :: matrix2

    real :: numbers3(5) !one dimensional integer array
    integer :: matrix3(3,3), i3 , j3 !two dimensional real array

    print *, "kind(numbers): ", kind(numbers)

    ! Assigning Values
    numbers(1) = 2.0
    
    do i  = 1, 5
        numbers(i) = i * 2.0
     end do

    print *, "numbers: ", numbers

    numbers = (/1.5, 3.2,4.5,0.9,7.2 /)
    
    print *, "numbers: ", numbers

    print *, '-------------------------------------------------'

    !assigning some values to the array numbers
    do i3 = 1, 5
        numbers3(i3) = i3 * 2.0
    end do
     
    ! display the values
    do i3 = 1, 5
        Print *, numbers3(i3)
    end do
     
    ! assigning some values to the array matrix
    do i3 = 1, 3
        do j3 = 1, 3
           matrix3(i3, j3) = i3 + j3
        end do
    end do
     
    ! display the values
    do i3 = 1, 3
        do j3 = 1, 3
           Print *, matrix3(i3, j3)
        end do
    end do
     
    ! short hand assignment
    numbers = (/1.5, 3.2,4.5,0.9,7.2 /)
     
    ! display the values
    do i3 = 1, 5
        Print *, numbers3(i3)
    end do





    call system("PAUSE")
end program array