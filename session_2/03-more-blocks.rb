def myeach(arr)
    # yield  arr[0] #run my block
    0.upto(arr.length - 1) do |x| #0..2
       yield arr[x], x
    end
end

myeach [1,3,4] do |item, x|
    puts "printed"
    puts item
    puts x
end

