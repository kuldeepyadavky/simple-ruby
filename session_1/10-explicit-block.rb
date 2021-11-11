def hug (&block)
    puts "{"
    # yield if block_given?
    # p block will give error wrong number of parameters not using &
    #prefix &
    block.call
    puts "}"
end

hug do 
    #block {not an obj}
    #convert block into proc using &
    puts "Thanks"
end


def hug2 (msg, &block)
    p block
    puts "{"
    puts msg
    block.call #if block_given?
    puts "}"
end

hug2 "hello" do
    puts "Thanks "
end





def sum (*args, &block)
    p args
    p block
    puts "{"
    block.call #if block_given?
    puts "}"
end

sum 2,3,4,5,6, "hello" do
    puts "Thanks "
end



def bye (&block)
    p &block
    p block
    block.call
end

bye do 
    puts "bye!"
end