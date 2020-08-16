! Variable Declaration
! type-specifier :: variable_name

program Variables
    implicit none

    integer :: total  	
    real :: average 
    complex :: cx  
    logical :: done 
    character(len = 80) :: message ! a string of 80 characters

    total = 20000  
    average = 1666.67   
    done = .false.   
    message = "A big Hello from Tutorials Point"
    cx = (3.0, 5.0) ! cx = 3.0 + 5.0i

    print *, "total: ", total
    print *, "average: ", average
    print *, "done: ", done
    print *, "message: ", message
    print *, "cx: ", cx

end program Variables