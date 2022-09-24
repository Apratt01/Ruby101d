=begin

The PEDAC Process

====================================================================
P: Understanding the Problem
====================================================================

  - Establish the rules and define the boundaries of the problem
    - Explicit - clearly stated in the problem description
      - Assessing available information
      - Restate the explicit requirements
  
    - Implicit - extrapolated from our understanding of the problem
  - Don't rush this step, clearly understand the solution
  
**General Example**

Given a string, produce a new string with every other word removed.

  - Explicit requirements
    - input = string
    - output = new string
    - remove every other word from the input string
    
  - Questions
    - What defines every other word? 
      -odd or even or?
    - What is a word in this context? 
      - Words are deliminated by spaces?
  
====================================================================
E: Examples and Test Cases
====================================================================

- Can confirm or refute assumptions
- Help to answer questions about implicit requirements
- Act as assertions which help to codify the rules and boundaries

====================================================================
D: Data Structures
====================================================================

- Help reason with data logically
- Help interact with data at implementation level
- Thinking in terms of data structures is part of the problem solving process
- Data structures are closely linked to algorithm
  - Set of steps from input to output
    - Involves structuring data in a certain way
    
===================================================================
A: Algorithms
===================================================================

- A logical sequence of steps for accomplishing a task or objective
  - Closely linked to data structures
  - Series of steps to strucutre data to produce the required output
- Stay abstract and high-level
  - Avoid implementation detail
  - Don't worry about efficiency for now

===================================================================
C: Implementing a solution in code
===================================================================

- Translating solution algorithm into code
- Think about the algorithm 
  - Language features and constraints
  - Characteristics of data structures
  - Built in functions and methods
  - Syntax and coding patterns
- Create any test cases if necessary
- Code with intent

*******************************************************************************

## Sum Even Number Rows

Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in
rows, with the first row containing one integer, the second row two integers, the third row
three integers, and so on. Given an integer representing the number of a particular row, 
return an integer prepresenting the sum of all the integers in that row.

============================
P: Understanding the Problem
============================

## Rules and Requirements ##

 - Sequence of even integers
 - Sequence begins with two
 - Integers are consecutive
 - Sequences are grouped into rows
 - Each row is incrementally larger: 1, 2, 3, ....
 - Row 'number' equals the number of elements in that row
  - Row 1 = 1 element
  - Row 2 = 2 elements
- Input = single integer
  - Identifies a 'row', which is a subset of a sequence of integers
- Output: a single integer
  - The sum of the integers in the row identified by the input integer
  
-Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ...

2
4, 6
8, 10, 12
14, 16, 18, 20
......

- How do we create the structure?

==========================
E: Examples and Test Cases
==========================

** Examples **

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 4 --> sum of integers in row: 68

confirm test cases

2 --> 2
4, 6 --> 10
14, 16, 18, 20 --> 68

==============================================================
D: Data Structures
==============================================================

2
4, 6
8, 10, 12
14, 16, 18, 20
......
 
 - Overall structure represents a sequence as a whole
 - Individual rows within overall structure
 - Individual rows in a set order in context of a sequence
 - Individual rows contain Integers
 - Can assume that integers are in a set order in the context of the sequence
 -   
[

 [2],
 [4, 6]
 [8, 10, 12]
 [14, 16, 18, 20],
 ...
]

============
A: Algorithm
============

1. Create an empty "rows" array to contain all of the rows
2. Create a 'row' array and add it to the overall 'rows' array
3. Repeat step 2 until all the necessary rows have been created
 - All the rows have been created when the length of the 'rows' array is equal
   to the input integer
4. Sum the final row.
5. Return the sum of the final row.

*Problem: Create a Row*

Rules:
- Row is an array
- Arrays contain integers
- Integers are consecutive even numbers
- Integers in each row form part of an overall larger sequence
- Rows are of different lengths
- Input: the information needed to create the output
  - The starting integer
  - Length of the row
- Output: the row itself '[8, 10, 12]'

Examples:

start: 2, length: 1 -- [2]
start: 4, length: 2 -- [4, 6]
start: 8, length: 3 -- [8, 10, 12]

Data Structures:
- An array of integers

Algorithm:

1. Create an empty 'row' array to contain the integers
2. Add the starting integer
3. Increment the starting integer by 2 to get the next integer in the sequence
4. Repeat steps 2 & 3 until the array has reached the correct length
5. Return the 'row' array

==================================
C: Implementing a solution in code
==================================


# See solution.rb file

Final Thoughts

 - Not a completely linear process
 - Move back and forward between the stpes
 - switch from implementation mode to abstract problem solving mode when necessary
 - Don't try to problem solve at the code level

=end


