# string = String.new #string is the instance of the class String aka an Object
# cheems = String.new("Cheems")

# class MyClass
#     def initialize #called when class is called
#         puts "This is the initialize method"
#     end
# end

# MyClass.new

# string.methods #lists methods for this object
# string.respond_to?("chomp") #asks if object can respond to chomp method

class Name
    def initialize(parameter, example, cheems)
        @instance_variable = parameter
        @example = example
        @cheems = cheems
    end

    attr_reader :instance_variable, :example #makes methods that returns these instance variables
    #def ExampleMethod
    #   return @instance_variable
    #end
    
    #overwriting an instance variable's value 
    # def instance_variable=(new_name)
    #     @instance_variable = new_name
    # end

    attr_writer :instance_variable

    #for variables you want in both reader and writer
    attr_accessor :instance_variable

    def printInstanceVariables
        @instance_variable + " " + @example
    end
    def printAll
        printInstanceVariables() + " " + @cheems
    end
    def to_s
        #define what string you want the class to print out
    end
end

name = Name.new("Argument", "Example", "cheems")
# puts name.instance_variable
# puts name.example

# puts name.instance_variable = "Cheems"
# puts name.printInstanceVariables
puts name.printAll