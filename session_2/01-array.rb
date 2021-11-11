x = [1,2,3]

p x.class

p x

p x[1]

age = Array.new(3) #3 empty array, nil

p age


# [1,2] I want repeat this 3 times
# [[1,2],[1,2]]

pair = Array.new(3,[1,2])

p pair

p pair[1]

p pair[2][1]


name = %w[Ruby Javascript Ruby]
p name


#array destruction
#multiple var assignment

a, b = [1,2]
p a,b

#pop first ele

#* -> operator
first, *rem = [1,2,3,4,5]

p first
p rem


#get the first item and ignore the rest

first , * = [1,2,3,4,5]

#pop the last item

*prefix, lst = [1,3,4,5,6]
p prefix
puts lst


#get the first and last n items
first, *, last = [1,2,3,4,5]

p first
p last

first, *r, last = [1,2,3,4,5]

p first
p last
p r


#intelligently coerce objs into arr

x = *"hi rubby" #=> ["hi rubby"]

p x


