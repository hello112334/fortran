program helloworld
    implicit none
    ! character*20::name
    character (len=20):: f_name, l_name
    print *,'Hello, World123!'
    print *,'What is your name'
    read *, f_name, l_name
    print *, 'Hello ', trim(f_name), " ", trim(l_name)

end program helloworld