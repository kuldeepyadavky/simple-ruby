puts "Hi, what's your name"

name = gets.chomp # remove the newline \n

puts "What's your age"
# age = gets.chomp.to_i #convert string to integer

age = gets.chomp

age = age.scan(/\d+/).map(&:to_i)[0] #regex function to find integer and get the 0th element

puts "So your name is #{name} and you are #{age} years old"

puts name , age

#age.class
#age.scan(/\d+/) -> scan through 