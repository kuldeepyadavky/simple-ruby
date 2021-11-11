p ["1", "2", "3"]

# map => number of input and number of o/p
# will match 

# :to_i is proc 
# &:to_i is block  [& is used to convert it to block]

p ["1","2","3"].map{|item| item.to_i}

p [1,2,3,4,5,6,7].select{|no| no.even?} #selects need a predicate

#even
p [1,2,3,4,5,6,7].select(&:even?)
#odd
p [1,2,3,4,5,6,7].select(&:odd?)
