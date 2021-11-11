require_relative "qtest"

class SimpleTest
    #macros method ruby
    describe "Basic test" do
        it "1 + 1 = 2" do
            is_equal 2, 1+1
        end
        it "3 + 3 = 5" do
            is_equal 5, 3+3
        end
    end
end

    
#class in ruby dont require instance to be created
