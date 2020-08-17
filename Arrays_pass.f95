program arrayToProcedure
    implicit none

    integer, dimension(5) :: myArray
    ! integer :: myNum

    call fillArray(myArray)
    call printArray(myArray)

    ! print *, myArray

    call system("PAUSE")
end program arrayToProcedure

! fillarray
subroutine fillArray(a)
    implicit none

    integer, dimension (5), intent (out) :: a

    ! local variable
    integer :: i

    print *, " ----------- fillArray ----------- "

    do i = 1, 5
        a(i) = i * 2.0
    end do

end subroutine fillarray    

! printArray
subroutine printArray(num)

    implicit none

    integer, dimension(5) :: num
    integer :: i

    print *, " ----------- printArray ----------- "
    
    do i = 1, 5
        Print *, num(i)
    end do

end subroutine printArray




