class Store
    include Enumerable
    attr_reader :snacks

    def initialize
        @snacks = []
    end

    def add_snack(snack)
        snacks << snack #push to array
    end

    #for enumeration
    def each   #this method is hidden from user 
        snacks.each do |snack|
            yield snack
        end
    end
end


mumbai = Store.new
mumbai.add_snack("vada paav")
mumbai.add_snack("samosa")
mumbai.add_snack("pepsi")

p mumbai.snacks

p mumbai.first  #to get the first ele in arr

p mumbai.map {|snack| snack.upcase}


p mumbai.select {|snack| snack.downcase.include?("s")}  
#include module is predicator which gives the ele which has "s" in them
#enumerable and each


#each here is used to tell the program how to iterate any DS 
