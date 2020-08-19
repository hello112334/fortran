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

