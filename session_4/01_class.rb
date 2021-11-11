#private method in ruby is like protected in C, Java

$everywhere = 'I am global variable'
class Test1
    @@count = 1
    def main_method1
        puts "inside main method 1"
    end
    # public 
    # def pub1
    #     puts "insdie public 1"
    # end
    def pub1
        puts "insdie public 1"
    end

    #accessor method for class variables
    def self.count
        @@count
    end

    def method1
        puts "inside method1"
        puts $everywhere
    end
    #private
    #private can be accessed only in 
    #the instance in which it is defined

    def compare(other_obj)
        puts "#{self.class} is compared with #{other_obj.class}"
        # puts other_obj.test2private #other_obj is receiver here 
        puts other_obj
        # puts other_obj.test2protected
    end
    private #macro method
    def pr_method1
        puts "inside private method 1"
    end

    def pr_method2
        puts "inside private method 2"
    end
    #protected
    #protected can be accessed by the class 
    #and the subclass and not in public
    protected
    def greet
        puts "in great protected"
    end
    
    private :method1
    #protected :somemethod1, :somemethod2
end

class Test2 < Test1
    @@count = 2 #will change the val of count as it shared between classes
    def main_method3
        puts greet
        puts pr_method1 #private method worked in sub class like protected
    end

    private 
    def test2private
        puts "test2private"
    end
     
    
    protected
    def test2protected
        puts "test2protected"
    end
end

class Test3 < Test2
    def compare2 (other_obj)
        puts other_obj.test2protected
        # puts other_obj.test2private wont work
    end
end
Test1.new.main_method1() #paren is optional
Test1.new.pub1
# Test1.new.pr_method1
# Test1.new.pr_method2

# Test1.new.greet

Test2.new.main_method3
p $everywhere


# why is there a protected and private method
# private method doesnt have a receiver 

t1 = Test1.new
t2 = Test2.new
t3 = Test3.new

# t1.compare(t2)
t3.compare(t2)



=begin
variables
- $ -> global
- @@ -> class variables
- @ -> instance variables    
- UPPERCASE -> constants
- PascalCase -> ConstantTypes [ex Class]
- local variables -> lower cased


methods
- default public
- protected
- private (dont have explicit receiveres)
=end

p Test1.count
p Test2.count