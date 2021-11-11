#passing block and proc together

def abc(x,y, &block)
    puts x
    y.call
    block.call
end

abc(5, proc {puts "I am a proc"}) do 
    puts "I am the block"
end