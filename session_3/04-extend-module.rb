module Module1
    p self

    def self.something
    end

    def hello
        puts "Hello again"
    end

    def welcome
        puts "Welcome to module 1"
        puts self #observe this 
    end

    def self.goodbye
        puts "see ya later!"
    end
end

class MyClass 
    extend Module1  #adds to the class
    include Module1 #adds to the instance
end


# MyClass.new.hello
MyClass.welcome   #remove new -> extend  instance is module
MyClass.new.welcome #inst = MyClass.new inst.welcome -> include d #instance is class

# inst = MyClass.new
# inst.welcome


#MyClass.new is a singleton

#module helps in adding additional features
#module is used to copy multiple inheritance
#modules are built to have reusability 


# myClass.new.goodbye #undefined method on instance of class


# myClass.goodbye #will give undefined error 
Module1.goodbye


#anything used with self can be accessed only with Module1

#there is no real static in Ruby