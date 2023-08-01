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
