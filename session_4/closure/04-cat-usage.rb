class Object
    def self.const_missing(c) 
        puts "#{c} is missing. So lets, load it dynamically"
        require_relative "04-cat" #require "./04-cat"
        Cat
    end
end

# Dog #dog missing will return cat as it loaded in the overriden method
Cat.new.talk
