class User
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end
    def over_13?
        age > 13
    end
end