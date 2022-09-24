a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin
Every object in Ruby has access to a method called object_id, which returns a numerical 
value that uniquely identifies the object. This method can be used to determine whether 
two variables are pointing to the same object.

Take a look at the code and predict the output

# I predict that a & c will have the same object id, and b will have a different object id
=end