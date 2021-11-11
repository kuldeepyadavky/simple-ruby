#module is a toolbox or container of methods and constants
#module mehtods and constants can be used as needed
#module helps us to create namespacing
#module cannot be used to create instances
#modules can be mixed into class to add new behaviours

# module name are written in UpperCamelCase
# constants in modules should be written in ALL CAPS
# access module methods with the dot operator (.)
# access module constants with the ::symbol
# ::symbol is scope resolution operator


module LengthConversion 
    p self #gives the name of the class -> context of LengthConversion
    WEBSITE = 'http::/algorisys.com'

    def self.miles_to_feet(miles) #def LengthConversion.miles_to_feet(miles)
        miles * 5280
    end

    def self.miles_to_inches(miles)
        feet = miles_to_feet(miles)
        feet * 12
    end

    def self.miles_to_cms(miles)
        inches = miles_to_inches(miles)
        inches * 2.45
    end
end

p LengthConversion::WEBSITE
p LengthConversion.miles_to_feet(100)
p LengthConversion.miles_to_inches(200)
p LengthConversion.miles_to_cms(3000)


#superclass of class is modules
#superclass of modules is object
#class can do what modules can do + something more