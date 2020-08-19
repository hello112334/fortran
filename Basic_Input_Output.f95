program descriptors
    implicit none
    
    real, parameter :: pi = 3.14
    integer :: i=12345, j=4567, k=8
    character(len=50) :: str = "a"

    ! I	→ integer
    ! Target: This is used for integer output. 
    ! Format: ‘rIw.m’
    ! Rule: If the ﬁeld width is not large enough to accommodate an integer then the ﬁeld is ﬁlled with asterisks.
    print "(2i5)", i, j, k

    ! F	→ real number
    ! Target: This is used for real number output. 
    ! Format: ‘rFw.d’
    ! Rule: If the ﬁeld width is not large enough to accommodate the real number then the ﬁeld is ﬁlled with asterisks.
    print "(f12.3)",pi

    ! E	→ real output (exponential notation)
    ! Target: This is used for real output in exponential notation. 
    ! Format: rEw.d
    ! Rule: In general, w ≥ d + 7.
    print "(e10.3)" ,123456.0 ! gives ‘0.123e+06’

    ! ES	→ real output (scientific notation)
    ! Target: This is used for real output (scientific notation).
    ! Format: ‘rESw.d’
    ! Rule: expressionw ≥ d + 7
    print "(es10.3)" ,123456.0 ! gives ‘1.235e+05’

    ! A	→ character
    ! Target: This is used for character output.
    ! Format: ‘rAw’
    ! Rule: If the ﬁeld width is not large enough to accommodate the character string then the ﬁeld is ﬁlled with the ﬁrst ‘w’ characters of the string.
    print "(a10)", str

    ! X	→ space
    ! Target: his is used for space output. 
    ! Format: ‘nX’
    ! Rule: ‘n’ is the number of desired spaces.
    print "(5x, a10)", str

    ! /	→ blank lines.
    ! Target: Slash descriptor – used to insert blank lines.
    ! Format: ‘/’
    ! Rule: the next data output to be on a new line.
    print "(/,5x, a10)", str

    ! Symbol & Description
    ! c: Column number
    ! d: Number of digits to right of the decimal place for real input or output
    ! m: Minimum number of digits to be displayed
    ! n: Number of spaces to skip
    ! r: Repeat count – the number of times to use a descriptor or group of descriptors
    ! w: Field width – the number of characters to use for the input or output

    print *, "------------------------------------"
    call printPi()

    ! print *, "------------------------------------"
    ! call printName()

    print *, "------------------------------------"
    call formattedPrint()

    print *, "------------------------------------"
    call productDetails()

    call system("PAUSE")

end program descriptors

! F
subroutine printPi

    implicit none

    real :: pi
    pi = 3.141592653589793238 
   
    Print "(f6.3)", pi 
    Print "(f10.7)", pi
    Print "(f20.15)", pi 
    Print "(e16.4)", pi/100 

end subroutine printPi
    
! X
subroutine printName
    implicit none
    
       character (len = 15) :: first_name
       print *,' Enter your first name.' 
       print *,' Up to 20 characters, please'
       
       read *,first_name 
       print *, "*: ", first_name
       print "(1x,a)", first_name
       
end subroutine printName

subroutine formattedPrint
    implicit none
    
       real :: c = 1.2786456e-9, d = 0.1234567e3 
       integer :: n = 300789, k = 45, i = 2
       character (len=15) :: str="Tutorials Point"
       
       print "(i6)", k 
       print "(i6.3)", k 
       print "(3i10)", n, k, i 
       print "(i10,i3,i5)", n, k, i 
       print "(a15)",str 
       print "(f12.3)", d
       print "(e12.4)", c 
       print '(/,3x, a15, 3x,"n = ",i6, 3x, "d = ",f7.4)', str, n, d
       
end subroutine formattedPrint

subroutine productDetails 
    implicit none 
    
       character (len = 15) :: name
       integer :: id 
       real :: weight

       name = 'Ardupilot'
       id = 1
       weight = 0.08
       
       print *,' The product details are' 
       
       print 100
       100 format (1x,'Name:', 7x, 'Id:', 2x, 'Weight:')
       
       print 200, trim(name), id, weight 
       200 format(1x, a, 2x, i3, 2x, f5.2) 
       
end subroutine productDetails


