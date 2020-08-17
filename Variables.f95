! Variable Declaration
! type-specifier :: variable_name

program Variables
    implicit none

    integer :: total  	
    real :: average 
    complex :: cx  
    logical :: done 
    character(len = 80) :: message ! a string of 80 characters
    character :: nolimit_message

    total = 20000  
    average = 1666.67   
    done = .false.   
    message = "A big Hello from Tutorials Point"
    nolimit_message = "abcdefghijklmnopqrstuvwkyz_abcdefghijklmnopqrstuvwkyz_abcdefghijklmnopqrstuvwkyz_abcdefghijklmnopqrstuvwkyz"
    cx = (3.0, 5.0) ! cx = 3.0 + 5.0i

    print *, "total: ", total
    print *, "average: ", average
    print *, "done: ", done
    print *, "message: ", message
    print *, "nolimit_message: ", nolimit_message
    print *, "cx: ", cx

end program Variables