program character
    implicit none
    
    character(len = 15) :: surname, firstname 
    character(len = 6) :: title 
    character(len = 40):: name
    character(len = 25)::greetings
    
    ! Character Functions
    character (80) :: text 
    integer :: i

    character(len = 15) :: surname1, firstname1
    character(len = 6) :: title1 
    ! character(len = 25)::greetings1

    character:: ch2
    integer:: i2

    character:: a, b, c

    ! Character Declaration
    title = 'Mr. ' 
    firstname = 'Rowan ' 
    surname = 'Atkinson'
    greetings = 'A big hello from Mr. Bean'
    
    print *, 'Character: Here is ', title, firstname, surname
    print *, greetings

    print *, '-----------------------------------------------------'

    ! Concatenation of Characters
    name = title//firstname//surname
    greetings = 'A big hello from Mr. Bean'
    
    print *, 'Concatenation: Here is ', name
    print *, greetings

    print *, '-----------------------------------------------------'
    !       0--------1---------2---------3---------4---------5---------6
    !       123456789012345678901234567890123456789012345678901234567890
    text = 'The intrinsic data type character stores characters and   strings.'
    i=index(text,'character') 
    
    if (i /= 0) then
       print *, ' The word character found at position: ',i 
       print *, ' in text: ', text 
    end if

    print *, '-----------------------------------------------------'

    title1 = 'Mr.' 
    firstname1 = 'Rowan' 
    surname1 = 'Atkinson'
    
    print *, 'Here is ', title1, firstname1, surname1
    print *, 'Here is ', trim(title1),' ',trim(firstname1),' ', trim(surname1)


    print *, '-----------------------------------------------------'
    do i2 = 65, 90
        ch2 = achar(i2)
        print*, i2, ' ', ch2
     end do

    print *, '-----------------------------------------------------'
    a = 'A'
    b = 'a'
    c = 'B'

    if(lgt(a,b)) then
        print *, 'lgt A is lexically greater than a'
     else
        print *, 'lgt a is lexically greater than A'
     end if
     
     if(lgt(a,c)) then
        print *, 'lgt A is lexically greater than B'
     else
        print *, 'lgt B is lexically greater than A'
     end if  
     
     if(llt(a,b)) then
        print *, 'llt A is lexically less than a'
     end if
     
     if(llt(a,c)) then
        print *, 'llt A is lexically less than B'
     end if


    call system("PAUSE")

end program character