module Module1
    p self
    def welcome
        puts "Welcome to module 1"
        puts self
    end
end

module Module2
    include Module1
end

class MyClass 
    include Module2
end

MyClass.new.welcome #instance change from module to class

#when u include the modules in class, instance of module gets
#included in instance of class



#mixin is a module that injects additional behaviour in a class
#mixins allow us to mimic inheritance from more than one class
#a class that includes module has access to its mehtods and constants
#constants and mehtods mixed into a class do not need to be prefixed with a module name



=begin
    
mixins vs inheritance

class inheritance should be an is-a relationship
for ex, array is a type of obj. A fixnum is type of integer
modules should be used for a has-a relationship. It adds functionality
for ex, a String has a Comparable feature set

=end

=begin
 
**mehtod lookup path
order that modules are included in class matters
Ruby looks at the last module included in class first
if multiple modules mix in methods with same name, 
last module included in class def will be used first
Ruby will throw an error if method is not found in 
class, the modules or superclasses 
=end