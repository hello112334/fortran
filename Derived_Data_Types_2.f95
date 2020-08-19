program deriveDataType
    implicit none
    
    integer :: i

    ! type declaration
    type Books
        character(len=50) :: title
        character(len=50) :: auth
        character(len=150) :: subject
        integer :: book_id
    end type Books

    ! declaring array of books
    type(Books), dimension(2) :: list

    !accessing the components of the structure

    list(1)%title = "C Programming"
    list(1)%auth = "Nuha"
    list(1)%subject = "Tutorial"
    list(1)%book_id = 654813

    list(2)%title = "Java Programming"
    list(2)%auth = "Zara"
    list(2)%subject = "Tutorial"
    list(2)%book_id = 111033

    !display book info
    do i = 1, 2
        print *, list(i)%title  
        print *, list(i)%auth
        print *, list(i)%subject
        print *, list(i)%book_id
    end do
    
    call system("PAUSE")

end program deriveDataType  