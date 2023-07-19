#cant use return statements in blocks
3.times{puts "Hi"}
2.times do
    puts "cheems"
end

def block_method
    puts "1"
    yield #block is called
    yield
    puts "3"
end

block_method do 
    puts "2"
end

#passing arguments into a block
def get_name
    print "Enter your name: "
    name = gets.chomp
    yield name
    name
  end
  
  name = get_name do |your_name|
    puts "That's a cool name, #{your_name}!"
  end

  #conditional call
  def get_name(prompt, &block)
    print prompt
    name = gets.chomp
    block.call(name) if block_given?
    name
  end
  
  my_name = get_name("Name: ") do |your_name|
    puts "That's a cool name, #{your_name}!"
  end
  
  puts "my_name: #{my_name}"

  #String methods
  string = "Treehouse"
string.each_char{|c| print "#{c}-"} 

#array methods
array = [1, 2, 3]
array.each { |item| print "-#{item}-" }
array.select { |item| item > 2 } 

#hash methods
hash.each do |key, value|
    puts "key: #{key}, value: #{value}"
end

#benchmarker
class SimpleBenchmarker
    def run(description, &block)
      start_time = Time.now
      block.call
      end_time = Time.now
      elapsed = end_time - start_time
  
      puts "\n#{description} results"
      puts "Elapsed time: #{elapsed} seconds"
    end
  end