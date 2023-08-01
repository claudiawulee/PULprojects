require "sinatra"
require "uri"
require "./jack"
# Allow /catalog and /catalog/ to resolve to the same thing
disable :strict_paths

get "/" do
    erb :welcome
end

get "/jack1" do
    jack1 = Jack.new()
    @poem = jack1.original_rhyme()
    erb :jack1
end

get "/jack2" do
    erb :jack2
end

post "/jack2" do
    jack2 = Jack.new()
    num = (params[:num]).to_i
    @poem2 = jack2.random_rhyme(num)
    erb :jack2_results
end

get "/jack3" do
    erb :jack3
end

post "/jack3" do
    jack3 = Jack.new()
    num = (params[:num]).to_i
    @poem3 = jack3.original_ending(num)
    erb :jack3_results
end