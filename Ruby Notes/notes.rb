# #put string - displays message
# #parenthesis are optional -- other functions still work even after removing ()
# puts "Hello World"

# puts(1,2,"a", "b")
# #sleeps for two seconds
# sleep(2)
# #does not put each item on new line unlike puts
# print("c", "d")
# sleep(1)

# # function and function call
# def wait_test
#     puts "waiting"
#     sleep 3
#     puts "Done"
# end

# wait_test

# def calc
#     number = 4
#     puts number 
#     puts number + 2
#     puts number
#     #reassigned value
#     number = number + 3
#     puts number
# end

# calc

# def adds(first, second)
#     puts first, second
#     puts first + second
# end

# adds(1,2)

# def ask(question)
#     print question
#     answer = gets
#     print(answer + " eggs")
# end

# ask("How many eggs do you want?")

#irb in terminal
# #example of string interpolation
# #{turns whatever that is in here into a string} 
# "aaa #{} bbb" = aaa  bbb

# # EXIT IRB BY PRESSING CTRL + D

# def escape_char
#     puts "\n"
#     puts "\t"
#     puts "\"\""
# end
# #An #{} interpolation marker runs any Ruby code it contains, and substitutes the result into the string.
# puts "The answer is #{1 + 2}."


# #.length, .even, .odd
# time = Time.now
# p time.class # prints out what class time is an instance of

# p "string".methods # prints what methods are available for this string object

# p "string\n".chomp #removes new line character from end fo string 


#fixnum = int
#float = decimal

# unless 100 < 99
#   p "This runs because the conditional is false"
# end

# x = 1
# if x > 2
#    puts "x is greater than 2"
# elsif x <= 2 and x!=0
#    puts "x is 1"
# else
#    puts "I can't guess the number"
# end

# || = OR comparator
# && = AND 
#! = NOT

# array1 = %w(item1 item2)
# p array1
# array2 = ["itemOne", "itemTwo"]
# p array2

# #captial W allows you to use interpolation 
# item = "Polar"
# array3 = %W(#{item} dog)
# p array3

# #append item to array's end
# array3 << "swag"
# array3.push("pog")
# array3 += ["slay", 17]
# puts array3.inspect

# #add item to array's beginning
# array3.unshift("I love Polar sm")
# p array3

# #accessing items
# p array3[0]
# p array3.at(1)
# p array3[-1]
# p array3.first
# p array3.last

#inserting item at specific index
# new_array = ["Cheems", "Polar"]
# new_array.insert(0, "oop")
# new_array.insert(2, "Cheems")
# p new_array
#total number of items
# p new_array.length
# p new_array.count
#number of times an item appears in list
# p new_array.count("Cheems")
# p new_array.include?("yolo")

#removing items from array
# p "Before popping: "
# p new_array
# last_item = new_array.pop #stores and removes last item
# p new_array

# p "Before shifting: "
# p new_array
# first_item = new_array.shift
# p new_array

# drop_2_items = new_array.drop(2) #list is not modified 
# p new_array 

# new_array.unshift("Claudia", "JK", "AGGGTM") #adds to front
# p new_array

# first_three_items = new_array.slice(0,3) #starting index, number of items we want
# p first_three_items
# p new_array #unmodified list

#HASH TABLES (Key => Value)
# hash = {"Polar" => "Samoyed"}
# p hash["Polar"]
# hash["Key"] = "value"
# p hash
# hash.delete("Key")
# p hash
# hash["Cheems"] = "Shiba"
# hash["Jade"] = "Parakeet"
# hash["Lucky"] = "Parakeet"

# p hash.keys
# p hash.key?("Polar")
# p hash.fetch("Cheems")

# duplicate_hash = {"key" => "value"}
# hash2 = {"key" => "value"}
# p duplicate_hash == hash2

# hash.store("newKey", "newValue")
# p hash

# p hash.values
# p hash.value?("lol")
# p hash.values_at("Cheems", "Lucky")

# def add_item()
#     print "Enter item name: "
#     name = gets.chomp
#     print "Enter item value (#): "
#     value = gets.chomp.to_i
#     hash = { name => value }
#     return hash
# end

# # new_hash = add_item()
# # p new_hash

# def add_to_list_in_hash()
#     print "Enter name: "
#     name = gets.chomp
#     value = add_value()
#     hash = {name => value}
#     return hash
# end

# def add_value()
#     print "Enter item 1: "
#     item1 = gets.chomp
#     print "Enter item 2: "
#     item2 = gets.chomp
#     list = [item1, item2]
#     return list
# end

# p add_to_list_in_hash()

#loops
# loop do 
#     print "Type exit to stop: "
#     input = gets.chomp
#     if input == "exit"
#         break
#     end
# end


# while 
  
# end


# until 
  
# end





# #item is copy of the array elements
# array = [1,2,3,4]
# array.each do |item|
#     puts "Each item is #{item}"
# end

# business = {"name" => "Treehouse", "location" => "Seattle"}

# business.each do |key, value|
#     puts "Key: #{key} \nValue: #{value}"
# end

# business.each_key do |key|
#     puts "Only keys\nKey: #{key}"
# end

# 5.times do |localVariable|
#     puts "Hello! #{localVariable}"
# end

# #range: {object1}..{object2}
# for item in 1..10 
#     puts "The current item is #{item}"
# end

# for item in ["Cheems", "Jade", "Lucky"]
#     puts "The current item is #{item}"
# end

#most use each loop bc it doesnt affect variable outside of loop