#get the current val of counter
#increment it 
#decrement it 


#this is essence of what most classes do : retrieve and modify
#one possible implementation of a Counter class :


class Counter 
    def initialize
        @x = 0
    end

    def get_x
        @x
    end

    def incr 
        @x += 1
    end

    def decr
        @x -= 1
    end
end

counter = Counter.new

p counter.incr
p counter.decr
p counter.incr
p counter.incr




# counter using lambda


p "using lambda".rjust(40, '-')
counter = lambda do 
    x = 0  #local
    get_x = lambda {x}
    incr = lambda {x += 1}
    decr = lambda {x -= 1}
    {get_x: get_x, incr: incr, decr: decr}
end

clambd = counter.call

# p clambd
p clambd[:get_x].call
p clambd[:incr].call
p clambd[:decr].call
p clambd[:incr].call
p clambd[:incr].call
p clambd[:incr].call


