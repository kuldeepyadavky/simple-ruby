def error_logger(e)
    File.open("errors.txt", "a") do |file|
        file.puts e
    end
end

class Registration
    #define default getter methods, but not setter methods
    #attr_accessor :first, :last
    attr_reader :first, :last

    #when someone tries to set a first name , enforce rules about it

    def first=(first)
        if first == nil or first.size == 0
            raise ArgumentError.new("first name is required for #{self.class}",)
        end
        first = first.dup
        first[0] = first[0].chr.capitalize
        @first = first
    end

    #when someone tries to set a last name , enforce rules about it

    def last=(last)
        if last == nil or last.size == 0
         raise ArgumentError.new("last name is required for #{self.class}",)
        end
        @last = last
    end

    def full_name
        "#{@first} #{@last}"
    end

    #delegate to the setter methods instead of setting the instance
    #variables directly 

    def initialize(first, last)
        self.first = first
        self.last = last
    end
end


begin  
    james = Registration.new("James", "Bond")
    james.first = "James 006"
    p james.full_name

    bymokesh = Registration.new("Bymokesh", "Bakshi")
    p bymokesh.full_name
    bymokesh.first = 'john'
    bymokesh.first #=> "john"
    bymokesh.first = nil

rescue ArgumentError => e
    p e
    error_logger(e)
end
