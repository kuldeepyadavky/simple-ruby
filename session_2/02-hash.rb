#hash is nothing but dict which contains key,val pairs

empty_hash = {}

p empty_hash

config = {"key1" => 1, "key2" => 2}

p config
p config["key1"]

settings = {key1:1, key2:2} #similar to json

p settings 
p settings[:key1] #symbol 


# lets understand more

puts "object id's"
p "ruby".object_id
p "ruby".object_id
p "ruby".object_id

puts "symbol object id's are"
p :ruby.object_id
p :ruby.object_id
p :ruby.object_id

#more hash feature 

puts "-------"
puts "Menus....."
menu = {burger: 3, tacos: 5, chips: 1}
p menu

p menu[:burger]
p menu[:coke]

# p menu.fetch(:coke) 
p menu.fetch(:coke, "Default value")

p menu.fetch(:coke, 2.4)


#adding new items to hash

menu[:pepsi] = 3
p menu