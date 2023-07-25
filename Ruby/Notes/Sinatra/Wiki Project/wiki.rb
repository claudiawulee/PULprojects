require "sinatra"
require "uri"
# Allow /catalog and /catalog/ to resolve to the same thing
disable :strict_paths
#loads a text file
def page_content(title)
    File.read("pages/#{title}.txt")
rescue Errno::ENOENT
    return nil
end


def save_content(title, content)
    File.open("pages/#{title}.txt", "w") do |file|
        file.print(content)
    end
end

def delete_content(title)
    File.delete("pages/#{title}.txt")
end

#ERB = Embedded Ruby

# puts page_content("dog")
get "/" do
    erb :welcome
end

#these two blocks could be confused with one another based on order
#block that comes first has higher priority (route priority)
get "/new" do
    erb :new
end
#URL parameter
get "/:title" do
    @title = params[:title]
    @content = page_content(@title)
    erb :show
end


post "/create" do
    save_content(params["title"], params["content"])
    redirect URI.escape("/#{params["title"]}") #replaces any spaces with %20
end

get "/:title/edit" do
    @title = params[:title]
    @content = page_content(@title)
    erb :edit
end

put "/:title" do
    save_content(params["title"], params["content"])
    redirect URI.escape("/#{params["title"]}")
end

delete "/:title" do 
    delete_content(params[:title])
    redirect "/"
end

# get "/test" do
#     erb :test
# end