program deriveDataType
    implicit none
    
    ! type declaration
    type Books
        character(len=50) :: title
        character(len=50) :: author
        character(len=150):: subject
        integer :: book_id
    end type

    ! declaring type variables
    type(Books) :: book1
    type(Books) :: book2

    ! accessing the component of the structure
    book1%title = "C Programming"
    book1%author = "David"
    book1%subject = "C Programming"
    book1%book_id = 64211354
    
    book2%title = "Perl Programming"
    book2%author = "John"
    book2%subject = "Perl Programming"
    book2%book_id = 51256224

    ! display book info
    print *, book1%title
    print *, book1%author
    print *, book1%subject
    print *, book1%book_id

    print *, book2%title
    print *, book2%author
    print *, book2%subject
    print *, book2%book_id

    call system("PAUSE")

end program deriveDataType