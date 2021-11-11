# require "byebug"

require('./custom-enumerable') 
# or require_relative('custom-enumerable')

class DataWrapper
    include CustomEnumerable

    def initialize(*items)
        @items = items.flatten 
        #flattens an arr [9,0] => 9,0 
        #[[9,0]] => [9,0]
    end

    def each(&block) 
        # p self
        block #proc obj
        @items.each(&block)  #proc converted to block
        # self
    end
end




items = DataWrapper.new(1,2,3,4,5)

res = items.map do |e|
    e * 2
end

p res

el = items.find do |element|
    element == 3
end

p el

# byebug #for debugging

ele = items.find {|element| element == 6}
p ele
#a block is always have to be converted into a proc



#ruby -n -e 'p eval($_)'