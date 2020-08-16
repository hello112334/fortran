program decision
    implicit none
    
    integer :: a, b

    a = 10
    b = 20

    st1: if (a == b) then      
        print *, "(a == b) → True"  
    else if (a < b) then
        print *, "(a < b)" 
    else if (a > b) then
        print *, "(a > b)" 
    else
        print *, "(a == b) → False"  
    end if st1


end program decision