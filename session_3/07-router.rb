class Router 
    def initialize
        @routes = {}
    end

    def match(options)
        @routes.update(options)
    end

    def routes(&b)
        p self
        # yield #wont work
        #b.call #because context is caller which is "main"

        instance_eval(&b) #convert proc to block
        p @routes
    end
end


p self #main initialization

# def match (*args)
#     put "in match => main"
# end


Router.new.routes do
    p "Inside routes block"
    p self
    match "/users" => "users#index"
    match "login"=> "sessions#new"
end

