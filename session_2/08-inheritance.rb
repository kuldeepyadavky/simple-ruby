#base class -> derived class
#reusuability

# ruby has single inheritance 
# with modules can create multiple inheritance

#module are used to wrap ur code 


require "digest"

module Globals
    CONFIG = ["a", "b", "c"]
end 


p Globals::CONFIG


module Encryption
    CONFIG = ["a", "b", "c"]

    def encrypt (str)
        #encryption logic
        Digest::SHA2.hexdigest(str)
    end

    def decrypt (estr)
        #decryption logic
        estr
    end
end 


class Person
    include Encryption
end


raj = Person.new
p raj

p raj.encrypt("secret message")


class Animal 
    def eat 
        puts "I am not hungry"
    end

    def walk 
     puts "I am strolling"
    end

    include Encryption
end

class Cat < Animal
end

class Dog < Animal
    p self 
    def initialize
    end
    def walk 
        p self #self is pointing to instance of Dog
        puts "Hmm.... not in mood"
        super #to call the parent method
    end
end


cat1 = Cat.new
cat1.eat
cat1.walk


dog1 = Dog.new
dog1.eat
dog1.walk

cat1.encrypt("kakdl")



# < is used to inherit

# include modules to create multiple inheritance
# it is known as mixing
#self changes according to the context in ruby

