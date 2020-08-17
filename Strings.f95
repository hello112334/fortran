program string
    implicit none

    character(len = 15) :: surname, firstname 
    character(len = 6) :: title 
    character(len = 25)::greetings
    
    ! Extracting Substrings
    character(len = 8) :: dateinfo ! ccyymmdd
    character(len = 4) :: year, month*2, day*2
 
    character(len = 10) :: timeinfo ! hhmmss.sss
    character(len = 2)  :: hour, minute, second*6

    ! Trimming Strings
    character (len = *), parameter :: fname="Susanne", sname="Rizwan"
    character (len = 20) :: fullname 

    character(len = 40):: name

    character(len=30) :: myString
    character(len=10) :: testString

    title = 'Mr.' 
    firstname = 'Rowan' 
    surname = 'Atkinson'
    greetings = 'A big hello from Mr. Beans' ! cut Beans to Bean s 
    
    print *, 'Here is ', title, firstname, surname
    print *, greetings

    print *, '-------------------------------------------------'
    ! date_and_time example
    call  date_and_time(dateinfo, timeinfo)

    !  let’s break dateinfo into year, month and day.
    !  dateinfo has a form of ccyymmdd, where cc = century, yy = year
    !  mm = month and dd = day

    year  = dateinfo(1:4)
    month = dateinfo(5:6)
    day   = dateinfo(7:8)

    print*, 'Date String: ', dateinfo
    print*, 'Year: ', year
    print *,'Month: ', month
    print *,'Day: ', day

    !  let’s break timeinfo into hour, minute and second.
    !  timeinfo has a form of hhmmss.sss, where h = hour, m = minute
    !  and s = second

    hour   = timeinfo(1:2)
    minute = timeinfo(3:4)
    second = timeinfo(5:10)

    print*, 'Time String: ', timeinfo
    print*, 'Hour: ', hour
    print*, 'Minute: ', minute
    print*, 'Second: ', second   

    print *, '-------------------------------------------------'
    ! Trimming Strings
    fullname = fname//" "//sname !concatenating the strings
   
    print*, fullname, ", fullname"
    print*, trim(fullname), ", trim(fullname)"
    
    print *, '-------------------------------------------------'
    ! Left and Right Adjustment of Strings
    
    title = 'Mr. ' 
    firstname = 'Rowan' 
    surname = 'Atkinson'
    greetings = 'A big hello from Mr. Beans'

    name = adjustl(title)//adjustl(firstname)//adjustl(surname)
    print *, 'Here is  ', name
    print *, "*", greetings
    
    name = adjustr(title)//adjustr(firstname)//adjustr(surname)
    print *, 'Here is  ', name
    print *, "*", greetings
    
    name = trim(title)//trim(firstname)//trim(surname)
    print *, 'Here is  ', name
    print *, "*", greetings

    print *, '-------------------------------------------------'
    ! Searching for a Substring in a String
    myString = 'This is a test'
    testString = 'test111'

    if ( index(myString, testString) == 0 ) then
        print *, "Not found: ", testString
    else
        print *, "Found at: ", index(myString, testString)
    end if

    call system("PAUSE")

end program string