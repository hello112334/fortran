program loop
    implicit none

    real, parameter :: PI = 3.14
    integer :: n, i, j
    real :: nfact = 1.0
    
    ! compute factorials
    do n = 1, 10
           
        if (n == 9) then 
            ! If you wish execution of your program to stop, you can insert a stop statement
            stop          
        end if 

        iloop: do i = 1, 5

            if (i==3) then
                ! If the exit statement is executed, the loop is exited
                exit iloop 
            end if

            ! nfact = nfact * n * i
            print*, " ---------- ", i," ---------- "

        end do iloop  

        if (n == 5) then 
            ! If a cycle statement is executed, the program continues at the start of the next iteration.
            cycle          
        end if

        nfact = nfact * PI * n

        ! Print result
        print*,n , " ", nfact

    end do
      

    
end program loop