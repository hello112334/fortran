program outputdata
    implicit none
    
    print *, "----------------------"
    call outputdata1()

    print *, "----------------------"
    call outputdata2()
    
    call system("PAUSE")

end program outputdata

subroutine outputdata1
    implicit none
    
    real, dimension(100) :: x, y
    integer :: i

    ! create data
    do i = 1, 100
        x(i) = i * 0.1
        y(i) = sin(x(i)) * (1 - cos(x(i)/3.0))
    end do

    ! output data into a file 
    ! open (unit = number, file = "name")
    open(1, file = 'EXE/data.dat', status = 'new')
    do i = 1, 100
        ! write([UNIT = ]u, [FMT = ]fmt, IOSTAT = ios, ERR = err, END = s)
        write(1, *) x(i), y(i)
    end do

    close(1)

end subroutine outputdata1

subroutine outputdata2
    implicit none

    real, dimension(100) :: x, y  
    real, dimension(100) :: p, q
    integer :: i  
    
    ! data  
    do i = 1,100  
       x(i) = i * 0.1 
       y(i) = sin(x(i)) * (1-cos(x(i)/3.0))  
    end do  
    
    ! output data into a file 
    open(1, file = 'EXE/data1.dat', status='new')  
    do i = 1,100  
       write(1,*) x(i), y(i)   
    end do  
    close(1) 
 
    ! opening the file for reading
    open (2, file = 'EXE/data1.dat', status = 'old')
 
    do i = 1,100  
       read(2,*) p(i), q(i)
    end do 
    
    close(2)
    
    do i = 1,100  
       write(*,*) p(i), q(i)
    end do 

end subroutine outputdata2