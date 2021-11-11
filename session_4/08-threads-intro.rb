t = Thread.new {puts "hello from thread.."}

puts "I am here"

t.join #will wait for all thread to join