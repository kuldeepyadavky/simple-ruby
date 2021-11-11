square_proc = Proc.new {|no| no ** 2}

p [1,2,3].map(&square_proc)


p square_proc.call(5)


square_lambda = lambda {|no| no ** 2}

p [1,2,3].map(&square_lambda)


#lambda shorthand 
twice = -> (x) {2 * x}  #similar to => in js 

p twice.call(5)


# &para -> converts block to proc
# &mehtodcall -> proc to block 
