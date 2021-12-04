"# Fortran" 

tutorial:
https://www.tutorialspoint.com/fortran/

launch.json / task.json:
https://marketplace.visualstudio.com/items?itemName=ekibun.fortranbreaker
https://qiita.com/implicit_none/items/d49c9fdf51c307d22819

Fortran - Variables:
  - 1 Integer
      - It can hold only integer values.
  - 2 Real
      - It stores the floating point numbers.
  - 3 Complex
      - It is used for storing complex numbers.
  - 4 Logical
      - It stores logical Boolean values.
  - 5 Character
      - It stores characters or strings.

Fortran - Constants:
  - 1 Literal constants
  - 2 Named constants

Fortran - Operators
  - 1 Arithmetic Operators
  - 2 Relational Operators
  - 3 Logical Operators

Fortran - Decisions
  - 1 IF
  - 2 Select case

Fortran - Loops
  - 1 Loop Type & Description (do loop)
  - 2 Loop Control Statements

Fortran - Numbers
  - 1 Integer type
  - 2 Real type
  - 3 Complex type

The Range, Precision and Size of Numbers
----------------------------------------------------------
Number of bits	Maximum value	                Reason
64             	9,223,372,036,854,774,807	    (2**63)–1
32	            2,147,483,647	                (2**31)–1

Number of bits	Largest value	Smallest value	Precision
64	            0.8E+308	0.5E–308          	15–18
32            	1.7E+38	0.3E–38	              6-9
----------------------------------------------------------

Fortran - Characters
  - type-specifier :: variable_name


Some Character Functions
----------------------------------------------------------
  - 1  len(string)
  - 2  index(string,sustring)
  - 3  achar(int)
  - 4  iachar(c)
  - 5  trim(string)
  - 6  scan(string, chars)
  - 7  verify(string, chars)
  - 8  adjustl(string)
  - 9  adjustr(string)
  - 10 len_trim(string)
  - 11 repeat(string,ncopy)
----------------------------------------------------------

Checking Lexical Order of Characters
----------------------------------------------------------
  - 1 lle(char, char)
  - 2 lge(char, char)
  - 3 lgt(char, char)
  - 4 llt(char, char)
----------------------------------------------------------

Fortran - Strings
  - type-specifier :: variable_name


Fortran - Arrays
  - real, dimension(5) :: numbers


Array Intrinsic Functions
----------------------------------------------------------
  - Vector and matrix multiplication
  - Reduction
  - Inquiry
  - Construction
  - Reshape
  - Manipulation
  - Location
----------------------------------------------------------

Fortran - Dynamic Arrays
  - real, dimension (:,:), allocatable :: darray   


Fortran - Derived Data Types
  - Title
  - Author
  - Subject
  - Book ID


Fortran - Pointers
  - integer, pointer :: p1 ! pointer to integer  
  - real, pointer, dimension (:) :: pra ! pointer to 1-dim real array  
  - real, pointer, dimension (:,:) :: pra2 ! pointer to 2-dim real array

Fortran - Basic Input Output
  - read(*,*) item1, item2, item3...
  - print *, item1, item2, item3
  - write(*,*) item1, item2, item3...

Formatted Input Output
----------------------------------------------------------------------------------------------------------
- I	→ integer
  - Target: This is used for integer output. 
  - Format: ‘rIw.m’
  - Rule: If the ﬁeld width is not large enough to accommodate an integer then the ﬁeld is ﬁlled with asterisks.
   
- F	→ real number
  - Target: This is used for real number output. 
  - Format: ‘rFw.d’
  - Rule: If the ﬁeld width is not large enough to accommodate the real number then the ﬁeld is ﬁlled with asterisks.

- E	→ real output (exponential notation)
  - Target: This is used for real output in exponential notation. 
  - Format: rEw.d
  - Rule: In general, w ≥ d + 7.

- ES → real output (scientific notation)
  - Target: This is used for real output (scientific notation).
  - Format: ‘rESw.d’
  - Rule: expressionw ≥ d + 7

- A	→ character
  - Target: This is used for character output.
  - Format: ‘rAw’
  - Rule: If the ﬁeld width is not large enough to accommodate the character string then the ﬁeld is ﬁlled with the ﬁrst ‘w’ characters of the string.

- X	→ space
  - Target: his is used for space output. 
  - Format: ‘nX’
  - Rule: ‘n’ is the number of desired spaces.

- /	→ blank lines.
  - Target: Slash descriptor – used to insert blank lines.
  - Format: ‘/’
  - Rule: the next data output to be on a new line.

- Symbol & Description
  - c: Column number
  - d: Number of digits to right of the decimal place for real input or output
  - m: Minimum number of digits to be displayed
  - n: Number of spaces to skip
  - r: Repeat count – the number of times to use a descriptor or group of descriptors
  - w: Field width – the number of characters to use for the input or output
----------------------------------------------------------------------------------------------------------


Fortran - File Input Output
  - open (unit = number, file = "name").

Specifier & Description
----------------------------------------------------------------------------------------------------------
  - 1	[UNIT=] u
      The unit number u could be any number in the range 9-99 and it indicates the file, you may choose any number but every open file in the program must have a unique number

  - 2	IOSTAT= ios
      It is the I/O status identifier and should be an integer variable. If the open statement is successful then the ios value returned is zero else a non-zero value.

  - 3	ERR = err
      It is a label to which the control jumps in case of any error.

  - 4	FILE = fname
      File name, a character string.

  - 5	STATUS = sta
      It shows the prior status of the file. A character string and can have one of the three values NEW, OLD or SCRATCH. A scratch file is created and deleted when closed or the program ends.

  - 6	ACCESS = acc
      It is the file access mode. Can have either of the two values, SEQUENTIAL or DIRECT. The default is SEQUENTIAL.

  - 7	FORM = frm
      It gives the formatting status of the file. Can have either of the two values FORMATTED or UNFORMATTED. The default is UNFORMATTED

  - 8	RECL = rl
      It specifies the length of each record in a direct access file.
----------------------------------------------------------------------------------------------------------

  - read ([UNIT = ]u, [FMT = ]fmt, IOSTAT = ios, ERR = err, END = s)
  - write([UNIT = ]u, [FMT = ]fmt, IOSTAT = ios, ERR = err, END = s)

Fortran - Procedures
  - function
  function name(arg1, arg2, ....) result (return_var_name)  
     [declarations, including those for the arguments]   
     [executable statements] 
  end function [name]

  - subroutine
  subroutine name(arg1, arg2, ....)    
     [declarations, including those for the arguments]    
     [executable statements]  
  end subroutine [name]


Fortran - Modules

test












