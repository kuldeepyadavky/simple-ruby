def greeting
    "hello ruby"
end

p greeting
p greeting()

def goodmorning(message)
    "You said #{message}"
end

p goodmorning("hello")
    

def h(k, v)
    v
end

p h("hello", "ruby")
puts h("hello", "ruby")

#polymorphism not supported


def one()
    "hello 2"
end

def one(p1, p2)
    "hello1"
end

p one(1,2)



#default parameters
def write(file, data, mode='w')
    file
end


p write("hello.txt", "abcd")
p write("hello.text", "r+")


#variable arguments

def sum(*args)
    args
end

def sum(*args)
    result = 0
    args.each do |item|
        result = result + item
    end
    result
end

def mult(*args)
    r = 1
    args.each{|item| r = r * item}
    r
end

p sum(1,2,3,4,5)
p sum(3,4,5)

p mult(3,4,5 )