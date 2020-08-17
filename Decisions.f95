program decision
    implicit none
    
    integer :: a, b

    ! local variable declaration
    character :: grade = 'B'

    ! local variable declaration
    integer :: marks = 98

    a = 10
    b = 20

    st1: if (a == b) then      
        print *, "(a == b) → True"  
    else if (a < b) then
        print *, "(a < b)" 
    else if (a > b) then
        print *, "(a > b)" 
    else
        print *, "(a == b) → False"  
    end if st1


   select case (grade)
   
      case ('A') 
      print*, "Excellent!" 

      case ('B')
      
      case ('C') 
         print*, "Well done" 

      case default
         print*, "Invalid grade" 
      
   end select
   
   print*, "Your grade is ", grade 


   select case (marks)
   
      case (91:100) 
         print*, "Excellent!" 

      case (81:90)
         print*, "Very good!"

      case default
         print*, "Invalid marks" 
         
   end select
   print*, "Your marks is ", marks


end program decision