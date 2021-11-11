def describe (desc, &b)
    puts desc.upcase
    b.call
end

def it (desc, &b)
    res = b.call
    if(res)
        puts "#{desc.ljust(30,'.')} passed"
    else
        puts "#{desc.ljust(30,'.')} failed"
    end
end

def is_equal (expected, actual)
    expected == actual
end