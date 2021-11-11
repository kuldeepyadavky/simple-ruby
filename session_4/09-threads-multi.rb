threads = []

10.times { |i|
threads << Thread.new {puts i} #push data into array << 
}

threads.each(&:join)

