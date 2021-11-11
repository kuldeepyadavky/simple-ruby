
module CustomEnumerable 
    puts "module included"

    def map(&block)
        res = []
        each do |ele|
            res << block.call(ele) #to insert ele in array
        end
        res  # return 
    end

    def find(&block)
        puts "I am in find method"
        res = nil
        found = false
        
        each do |element|
            if block.call(element)
                res = element
                found = true
                break
            end
         end
        found ? res : "not found"
    end
end