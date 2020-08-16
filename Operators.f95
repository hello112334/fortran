program operators
    implicit none

    integer :: a, b, aa
    real :: c
    logical :: d, dd

    a  = 10
    aa = 10
    b = 20
    
    print *, "a: ", a, " ,b: ", b
    
    ! ---- Arithmetic Operators ----
    c = a + b
    print *, "a + b = ", c
    
    c = a - b
    print *, "a - b = ", c

    c = a * b
    print *, "a * b = ", c

    c = a / b
    print *, "a / b = ", c

    c = a ** b
    print *, "a ** b = ", c

    print *, "---------------------------------------------"
    ! ---- Relational Operators ----
    d = (a == b)
    print *, "(a == b) = ", d

    ! eq
    d = (a == aa)
    print *, "(a == aa) = ", d

    ! eq
    d = (a == aa)
    print *, "(a == aa) = ", d

    ! ne
    d = (a /= aa)
    print *, "(a /= aa) = ", d

    ! gt
    d = (a > b)
    print *, "(a > b) = ", d

    ! lt
    d = (a < b)
    print *, "(a < b) = ", d

    ! ge
    d = (a >= b)
    print *, "(a >= b) = ", d

    ! le
    d = (a <= b)
    print *, "(", a, " <= ", b, ") = ", d

    print *, "---------------------------------------------"
    ! ---- Logical Operators ----

    ! and
    d = (a <= b .and. a == aa)
    print *, "( a <= b .and. a == aa ) = ", d

    ! or
    d = (a <= b .or. a == aa)
    print *, "( a <= b .and. a == aa ) = ", d

    ! not
    d = ( .not. a <= b)
    print *, "( .not. a <= b ) = ", d

    ! not
    d = .not. (a <= b)
    print *, ".not. ( a <= b ) = ", d

    ! eqv
    ! Check equivalence of two logical values.
    d = .true.
    dd = .false.
    print *, "( d .eqv. dd ) = ", ( d .eqv. dd )

    ! neqv
    print *, "( d .neqv. dd ) = ", ( d .neqv. dd )

end program operators