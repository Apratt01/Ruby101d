=begin 

Build a program that asks a user for the length and width of a room in meters 
and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

Create a constant that holds square feet conversoin amount
User input to prompt for lenght of the room in meters
Same for width
Caclualte area in square meters
calculate square feet
return information

=end
SQFEET_CALC = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f
area = (length * width).round(2)
square = (area * SQFEET_CALC).round(2)
puts "The area of the room is #{area} square meters (#{square} square feet)."