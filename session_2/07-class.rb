# class -> blueprint -> to create objects

# class is a custom container for data

# goal of an obj oriented programming
# - to model real life things as set of classes


# terminologies 
# instance var => attributes
# instance methods
# class level methods - treated like singleton
# singleton is only one instance i.e shared

class Gadget
    attr_accessor :available, :make #macro methods

    attr_reader :id

    attr_writer :secret
    def initialize(type = "electronic", name)  #constructor
      # @type, @@type, $type are sigil
      #@ -> instance
      #@@ -> Class
      #$ -> global
      #instance variable are private
      @type = type #instance variable
      @name = name
      @available = true
      @id = rand(1..1000)
    end


    #override to_s
    def to_s
        "Gadget #{@type} and name is #{@name}"
    end

    #by default methods are public in ruby
    #getters
    def type
        @type
    end

    def name
        @name
    end

    #setter any method with equal to is setter in ruby
    def name=(value)
        @name = value
    end

    #attribute accessor

end

# every class has a parent obj and at the root, there is a basic object 

p Gadget.class
p Gadget.superclass  #immediate parent is object

p Gadget.superclass.superclass  # root of the class is BasicObject


phone = Gadget.new("electronic", "nokia phone")
laptop = Gadget.new("electronic", "acer lap")

# p phone
# p laptop


# p phone.to_s
# p laptop.to_s


# p phone.is_a? (Gadget)
# p phone.is_a? (Object)
# p phone.is_a? (BasicObject)


# p phone.methods.sort

p phone.to_s
p laptop.to_s

p phone.type
p laptop.type

p phone.name
p laptop.name


phone.name = "oppo"
p phone
p phone.name


phone.available = false
laptop.make = "dell"
phone.secret = "seiei4"
p phone
p laptop