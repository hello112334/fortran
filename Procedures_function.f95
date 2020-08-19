program calling_func
    ! implicit none
    
    real :: a
    a = area_of_circle(2.0)
    
    print *, "The area of a circle with radius 2.0 is"
    print *, a

    call system("PAUSE")

end program calling_func

! 
function area_of_circle(r)

    ! dummy arguments 
    real :: area_of_circle

    ! local variable
    real :: r
    real :: pi

    pi = 4 * atan(1.0)

    area_of_circle = pi * r ** 2 

end function area_of_circle











