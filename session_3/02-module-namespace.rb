module Square
    def self.area(side)
        side * side
    end
end

module Circle 
    PI = 3.14519

    def self.area(rad)
        PI * rad * rad
    end
end

module Rectangle
    def self.area(l,b)
        l * b
    end
end

puts Square.area(5)
puts Rectangle.area(40,80)
puts Circle.area(30)

