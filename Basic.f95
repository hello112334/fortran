program basic
    ! This simple program adds two numbers
    implicit none

    ! It stores the floating point numbers, such as 2.0, 3.1415, -100.876, etc.
    real :: a, b, result

    ! The integer types can hold only integer values.
    integer :: largeval

    !two byte integer
    integer(kind = 2) :: shortval
   
    !four byte integer
    integer(kind = 4) :: longval
    
    !eight byte integer
    integer(kind = 8) :: verylongval
    
    !sixteen byte integer
    integer(kind = 16) :: veryverylongval
    
    !default integer 
    integer :: defval

    ! The character type stores characters and strings
    character (len = 40) :: name

    ! huge() function gives the largest number
    print *, huge(largeval)

    print *, "------------------------------------"

    ! Executable statements
    a = 12.0
    b = 15.0
    result = a + b

    ! The print * command displays data on the screen.
    print *, 'The total is ', result

    print *, "------------------------------------"
    print *, "two byte integer: ", huge(shortval)
    print *, "four byte integer: ", huge(longval)
    print *, "eight byte integer: ", huge(verylongval)
    print *, "sixteen byte integer: ", huge(veryverylongval)
    print *, "default integer: ", huge(defval)
    
    print *, "------------------------------------"

    name = "Zara Ali"
    print *, "Name: ", name(1:4) 

end program basic