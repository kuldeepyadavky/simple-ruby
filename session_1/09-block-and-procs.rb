my_proc = proc do
    age = 10
    puts "I am in a proc"
    puts age
end

puts "Will it run!!"

my_proc.call  #exe the proc -- like a dynamic fun in js


=begin
    function -> called itself
    method -> called in context of object
    proc -> 

    A Proc object is an encapsulation of a
    block of code, which can be stored in 
    a local variable, passed to a method or
    another Proc, and can be called. Proc 
    is an essential concept in Ruby and a
    core of its functional programming features.
=end


def hug 
    puts "{"
    yield if block_given?
    puts "}"
    # yield if block_given?
end


puts "---without block----"
hug # or hug() without block

#with block

puts "---with block----"
hug do 
    #any valid ruby code
  puts  "Thank You"
end

hug {
    #any valid ruby code
    puts "Thank you again"
}

#implicitly can't execute two do blocks
#every method can take a block of code
#explicitly can execute more than one blocks
