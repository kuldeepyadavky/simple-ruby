require 'open-uri'


#if you have more than 200-300 urls, the code
#will be performed too long

urls = [
    "https://www.google.com",
    "https://www.youtube.com",
    "https://www.rubyflow.com",
    "https://www.rubyonrails.com"
]
urls.each do |url|
    resp = URI.open(url)
    puts "#{url} has content length #{resp.read.size} symbols"
end