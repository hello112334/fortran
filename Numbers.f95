program number

    implicit none
    
    ! Integer Type
    integer :: largeval

    ! Real Type
    real :: p, q, realRes 
    integer :: i, j, intRes  
    
    ! Complex Type
    integer :: ii = 10
    real :: x = 5.17

    complex, parameter :: iii = (0, 1)   ! sqrt(-1)   
    complex :: xx, yy, zz 

    ! The Range, Precision and Size of Numbers
    real:: x1, y1, z1

    ! Kind
    integer :: i2 
    real :: r2 
    character :: c2 
    logical :: lg2 
    complex :: cp2 

    DOUBLE PRECISION R, S(3,6)
    REAL*8 T(-1:0, 5)


    ! Assigning  values   
    p = 2.0 
    q = 3.0    
    i = 2 
    j = 3 

    ! Integer Print
    print *, "huge(largeval): ", huge(largeval)

    ! floating point division 
    realRes = p/q  
    intRes = i/j
   
    print *, "2.0/3.0: ",realRes
    print *, "2/3: ",intRes

    print *, "-----------------------------------------------"

    ! Complex Print
    print *, "cmplx: ",cmplx(ii, x)

    print *, "-----------------------------------------------"

    xx = (7, 8); 
    yy = (5, -7)   
    write(*,*) iii * xx * yy
    ! = print *, ii * xx * yy
    
    zz = xx + yy
    print *, "z = x + y = ", zz
    
    zz = xx - yy
    print *, "z = x - y = ", zz 
    
    zz = xx * yy
    print *, "z = x * y = ", zz 
    
    zz = xx / yy
    print *, "z = x / y = ", zz 

    print *, "-----------------------------------------------"
    ! The Range, Precision and Size of Numbers

    x1 = 1.5e+20
    y1 = 3.73e+20
    z1 = x1 * y1 
    print *, z1
   
    z1 = x1/y1
    print *, z1

    ! The Kind Specifier - byte
    print *,' Integer ', kind(i2) 
    print *,' Real ', kind(r2) 
    print *,' Complex ', kind(cp2)
    print *,' Character ', kind(c2) 
    print *,' Logical ', kind(lg2)

    print *, "-----------------------------------------------"
    ! DOUBLE PRECISION R, S(3,6)
    ! REAL*8 T(-1:0,5)

    R = 3.14
    S(1, 1) = 3.14
    T(-1, 1) = 3.14

    print *, "R: ", R
    print *, "S: ", S
    print *, "T: ", T

    ! print *, " ******* Exit after 5 seconds. ******* "
    ! call sleep(5)
    call system("PAUSE")

end program number
