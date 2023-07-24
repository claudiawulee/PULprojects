require "sinatra"
# set :bind, "0.0.0.0" if using workspace (external server)
get "/apple" do #everytime server gets a get request with /apple it will run this block of code
    "Here's a juicy apple"
end

#http://localhost:4567/apple
#"Local" refers to the fact that it's not out on the Internet somewhere, it's this same machine. And "host" is another name for "server".
#signals that you want to send a request from your computer back to that same computer


get "/carrot" do 
    "Here's a crunchy carrot"
end