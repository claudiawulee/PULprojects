array = [1, 2, 3, 4, 5, 6]

array.each { |item| puts "Item: #{item}" }
array.each_with_index {|item, index| puts "[#{index}] #{item}"}
array.member?(3)
array.all? { |item| item > 3 }
array.any? { |item| item > 3 }
array.detect {|item| item > 3 } #returns first number in array that is greater than 3
array.select {|item| item > 3 }
# array.find_all is the same
array.map { |item| item + 3 } #adds 3 to each item
array.map { |item| item * 3 }.map{|item| item.to_s} #multiplies each item by 3 and converts eahc to a string


puts array.take(2)

hash = {name: "Jason", location: "Treehouse", position: "Teacher"}
puts hash.map{|k,v| "#{k}: #{v}"}.inspect #always returns an array tho
puts hash.take(2).inspect


puts array.inject{|sum, item| sum += item}
puts array.inject(&:+)