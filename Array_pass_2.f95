program arrayToProcedure
    implicit none
    
    ! print *, "Hello WORLD!"
    integer, dimension(10) :: myArray
    integer :: i
     
    interface
        subroutine fillArray(a)
            integer, dimension(:), intent(out) :: a
            integer :: i
        end subroutine fillArray

        subroutine printArray(a)
            integer, dimension(:) :: a
            integer :: i
        end subroutine printArray    
    end interface

    call fillArray(myArray)
    CALL printArray(myArray)

    call system("PAUSE")

end program arrayToProcedure

! 
subroutine fillArray(a)
    implicit none

    integer, dimension(:), intent(out) :: a

    ! local variable
    integer :: index, arraysize
    arraysize = size(a)

    do index = 1, arraysize
        a(index) = index
    end do

end subroutine fillArray

! 
subroutine printArray(a)
    implicit none

    integer, dimension(:) :: a
    integer:: index, arraySize
    arraySize = size(a)

    do index = 1, arraysize
        print *, "a(", index, "): ", a(index)
    end do

end subroutine printArray
