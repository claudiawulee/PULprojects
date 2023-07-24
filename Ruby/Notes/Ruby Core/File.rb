#rewrites file everytime its run
File.open("example.txt", "w") do |file|
    print "Enter your name: "
    name = gets.chomp
    file.puts("#{name}")
end

#appends to file
#though if both functions ran in same iteration it will rewrite the file 
File.open("example.txt", "a+") do |file|
    print "Enter your email: "
    email = gets.chomp
    file.puts("#{email}")
end