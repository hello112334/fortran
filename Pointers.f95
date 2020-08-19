program pointers
    implicit none

    integer, pointer :: p1
    allocate(p1)

    p1 = 1
    print *, p1

    p1 = p1 + 4
    print *, p1

    deallocate(p1)

    print *, "----------------------------"
    call pointerExample()


    print *, "----------------------------"
    call pointerExample2()

    print *, "----------------------------"
    call pointerExample3()

    call system("PAUSE")
    
end program pointers

! pointerExample
subroutine pointerExample()
    implicit none

    integer, pointer :: p1

    ! A target is another normal variable    
    integer, target :: t1

    ! associate a pointer variable with a target variable
    p1 => t1 ! O pointer => target
    !p1 => i1! X pointer => integer

    ! After connected a pointer with a target
    p1 = 1

    print *, "1 p1: ", p1
    print *, "1 t1: ", t1

    p1 = p1 + 4

    print *, "2 p1: ", p1
    print *, "2 t1: ", t1

    t1 = 8

    print *, "3 p1: ", p1
    print *, "3 t1: ", t1

end subroutine pointerExample


! pointerExample2
subroutine pointerExample2()
    implicit none

    integer, pointer :: p1
    integer, target :: t1
    integer, target :: t2
    
    p1 => t1
    p1 = 1

    print *, "(p1, t1): ", associated(p1, t1)
    print *, "(p1, t2): ", associated(p1, t2)

    print *, "1 p1: ", p1
    print *, "1 t1: ", t1

    p1 = p1 + 4
    
    print *, "2 p1: ", p1
    print *, "2 t1: ", t1

    t1 = 8
     
    print *, "2 p1: ", p1
    print *, "2 t1: ", t1
    
    ! The nullify statement disassociates a pointer from a target.
    ! p1 = NULL
    nullify(p1)
    ! p1 = 1
    print *, "null p1: ", p1
    print *, "null t1: ", t1
    print *, "null t2: ", t2

    p1 => t2

    ! The function associated, tests a pointer’s association status.
    print *, "(p1): ", associated(p1)
    print *, "(p1, t1): ", associated(p1, t1)
    print *, "(p1, t2): ", associated(p1, t2)

    ! what is the value of p1 at present
    print *, "3 p1: ", p1
    print *, "3 t2: ", t2

    p1 = 10
    print *, "4 p1: ", p1
    print *, "4 t1: ", t2

end subroutine pointerExample2


! pointerExample2
subroutine pointerExample3()

    implicit none

    integer, pointer :: a, b
    integer, target :: t
    integer :: n

    t = 1
    a => t

    print *, "1 a: " , a
    print *, "1 t: " , t

    print *, " ****************** "
    t = 2
    b => t

    print *, "2 a: " , a
    print *, "2 b: " , b
    print *, "2 t: " , t

    print *, " ****************** "
    n = a + b

    print *, "3 a: " , a
    print *, "3 b: " , b
    print *, "3 t: " , t 
    print *, "3 n: " , n

end subroutine pointerExample3