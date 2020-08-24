program outputdata
    implicit none
    
    print *, "----------------------"
    ! call outputdata1()

    print *, "----------------------"
    ! call outputdata2()

    call outputdata3()
    
    call system("PAUSE")

end program outputdata

subroutine outputdata1
    implicit none
    
    real, dimension(100) :: x, y
    integer :: i
    
    ! Formatting for CSV
    101 format(1x, *(g0, ", ")) 
    ! 101 format(1x, *(1x, ", ")) 
    
    ! create data
    do i = 1, 100
        x(i) = i * 0.1
        ! y(i) = sin(x(i)) * (1 - cos(x(i)/3.0))
        y(i) = i * 0.1
    end do

    ! output data into a file 
    ! open (unit = number, file = "name")
    open(1, file = 'EXE/data.csv', status = 'old')
    do i = 1, 100
        ! write([UNIT = ]u, [FMT = ]fmt, IOSTAT = ios, ERR = err, END = s)
        write (1, 101) x(i), y(i), y(i), y(i), y(i), y(i)
        ! write(1, *) x(i), "  ",y(i)
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
       y(i) = sin(x(i)) * ( 1 - cos(x(i)/3.0) )  
    end do  
    
    ! output data into a file 
    open(1, file = 'EXE/data1.txt', status='new')  
    do i = 1,100  
       write(1,*) x(i), y(i)   
    end do  
    close(1) 
 
    ! opening the file for reading
    open (2, file = 'EXE/data1.txt', status = 'old')
 
    do i = 1,100  
       read(2,*) p(i), q(i)
    end do 
    
    close(2)
    
    do i = 1,100  
       write(*,*) p(i), q(i)
    end do 

end subroutine outputdata2


subroutine outputdata3
    implicit none
  
    TYPE :: met_record
       REAL :: LATITUDE_DD1
       REAL :: LATITUDE_DD2
       REAL :: LATITUDE_DD3
    !    REAL :: LATITUDE_DD4
    !    REAL :: LATITUDE_DD5
    !    REAL :: LATITUDE_DD6
    END TYPE met_record

    real, dimension(:), allocatable :: x, y  
    real, dimension(:), allocatable :: p, q
    TYPE(met_record), DIMENSION(71385) :: weather_reports
    integer :: i  
 
    ! Formatting for CSV
    ! 101 format(1x, *(g0, ", ")) 

    ! opening the file for reading
    open (2, file = 'EXE/data.csv', status = 'old')
 
    ! allocate(p(100))
    ! allocate(q(100))

    do i = 1,100  
    !    read(2, 101) p(i), q(i)
        read(2, *) weather_reports(i)
    end do 
 
    close(2)
    
    do i = 1,100  
       write(*,*) weather_reports(i)
    end do 

    ! deallocate(p)
    ! deallocate(q)

end subroutine outputdata3



! TYPE :: met_record
!    INTEGER :: TWSCODE
!    CHARACTER(len=32) :: DISTRICT
!    REAL :: LATITUDE_DD
!    REAL :: LONGITUDE_DD
!    CHARACTER(len=8) :: RECORDED_DATE
!    INTEGER :: HOUR
!    REAL :: TEMPERATURE
!    REAL :: HUMIDITY
!    REAL :: WIND_SPEED
!    REAL :: WIND_DIRECTION
! END TYPE met_record