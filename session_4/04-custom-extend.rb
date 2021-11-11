def custom_extend(module_name)
    puts "inside custom extend"
    p module_name
    module_name.singleton_methods().each do |method|
        p method

        define_singleton_method(method) do |*args, &b|
            module_name.singleton_method(method).call(*args, &b)#F1      
        end
    end
end

module F1
    def self.setup_f1
        puts "setting f1"
    end

    def self.load_f1
        puts "setting f1"
    end

    def self.demo
        puts "demo f1"
    end

    def abc
        puts "abc"
    end
end


class App
    include F1
    extend F1
    custom_extend F1
end


#all the above code is executed
app = App.new
App.setup_f1
App.load_f1
App.demo
App.new.abc
App.abc