# procs dont care about missing args but
#lambdas do 


some_proc = Proc.new { |name, age| "your name is #{name} and age is #{age}" }

p some_proc.call("cat", 22)

p some_proc.call("dog")



#using lambda

some_l = lambda {|name, age| "Your name is #{name} and age is #{age}"}


p some_l.call("Tiger", 30) #if args are not equal it will get error [remove 30 to check]

















#second difference is return value


def diet 
    status = lambda {return "You gave in"}
    status.call
    "You completed the diet"
end


result = diet 
p result 



def diet2 
    status = Proc.new {return "You gave in"} #if you return from a proc your code is terminated
    status.call
    "You completed the diet"
end


result2 = diet2 
p result2