#let's create a lambda 


drawing_gag = lambda do |msg|
    p msg
end


drawing_gag.call("draw a drawing")  #treat like an anonymous func in Javascript



drawing_gag = lambda do |msg|
    "hello"
end


p drawing_gag.call("draw a drawing")  



=begin
 
js 

function hello (){
    return function (){

    }
}    
=end


drawing_gag = lambda do |msg|
    lambda do 
        prefix = "I will not"
        "#{prefix} #{msg}"
    end
end


inner_lambda= drawing_gag.call("draw a sketch")  
p inner_lambda #will return a lambda
p inner_lambda.call #will call the inner lambda and return the o/p