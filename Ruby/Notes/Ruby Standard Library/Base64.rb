require 'base64'

str = "Hi"
# puts Base64.encode64(str)
encode =  Base64.encode64(str)
puts Base64.decode64(encode)
