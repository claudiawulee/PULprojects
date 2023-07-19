module SimpleModule
    VERSION = 1.0
end

# :: constant resolution operator - allows you to access stuff in modules
# puts SimpleModule::VERSION

#------------Namespaces
module LaserBots
    class Player
        attr_reader :name
        def initialize(name)
            @name = name
        end
    end
end

#need to tell ruby where the player class is with ::
# player = LaserBots::Player.new("Jason")
# puts player.name

#------------Comparable
class Player
    include Comparable
  
    attr_accessor :name, :score
  
    #Spaceship Operator - tells how to compare objects
    def <=>(other_player)
      score <=> other_player.score
    end
  
    def initialize(name, score)
      @name = name
      @score = score
    end
  end
  
#   player1 = Player.new("Jason", 100)
#   player2 = Player.new("Kenneth", 80)
  
#   puts "player1 > player2: %s" % (player1 > player2)
#   puts "player1 < player2: %s" % (player1 < player2)

#------------Math
# puts Math::E          # => 2.718281828459045
# puts Math::PI         # => 3.141592653589793
# puts Math.sqrt(9)     # => 3.0
# puts Math.cos(1)      # => 0.5403023058681398
# puts Math.hypot(2, 2) # => 2.8284271247461903
# puts Math.log(2, 10)  # => 0.30102999566398114
# puts Math.log(2, 12)  # => 0.2789429456511298

#------------Enumerable
#Arrays and hashes, traverse and search methods
class Player
    include Comparable
    attr_accessor :name, :score
    
    def <=>(other_player)
      score <=> other_player.score
    end
    
    def initialize(name, score)
      @name, @score = name, score
    end
  end
  
  class Game
    include Enumerable
    
    attr_accessor :players
    
    #passing in block like a variable
    def each(&block)
      players.each(&block)
    end
  
    def initialize
      @players = []
    end
    
    def add_player(player)
      players.push(player)
    end
    
    def score
      score = 0
      players.each do |player|
        score += player.score
      end
      score
    end
  end
  
  # player1 = Player.new("Jason", 100)
  # player2 = Player.new("Kenneth", 80)
  # player3 = Player.new("Nick", 95)
  # player4 = Player.new("Craig", 20)
  
  # game1 = Game.new
  # game1.add_player(player1)
  # game1.add_player(player2)
  
  # game2 = Game.new
  # game2.add_player(player3)
  # game2.add_player(player4)
  
  # puts game1.inspect
  
  # puts game1.any?{|player| player.score > 80}
  
  # players = game1.find{|player| player.score > 80}
  # puts "Players with a score > 80", players.inspect

#------------Include
module Fetcher
  def fetch(item)
    puts "I'll bring that #{item} right back!"
  end
end

class Dog
  include Fetcher
  def initialize(name)
    @name = name
  end
end

class Cat
  include Fetcher
  def initialize(name)
    @name = name
  end
end


# dog = Dog.new("Fido")
# dog.fetch("ball")

# cat = Cat.new("Garfield")
# cat.fetch("laser pointer")

#------------Included

module Fetcher
  def self.included(class1) #passing in a class into module 
    puts "#{class1} has been included"
  end
  def fetch(item)
    puts "I'll bring that #{item} right back!"
  end
end

class Dog
  include Fetcher
  def initialize(name)
    @name = name
  end
end

class Cat
  include Fetcher
  def initialize(name)
    @name = name
  end
end


dog = Dog.new("Fido")
dog.fetch("ball")

cat = Cat.new("Garfield")
cat.fetch("laser pointer")

#------------Extend
module Tracking
  def create(name)
    object = new(name)
    instances.push(object)
    return object
  end

  def instances
    @instances ||= []
  end

  def find(name)
    instances.find do |instance|
      instance.name == name
    end
  end
end
class Customer
  extend Tracking

  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def to_s
    "[#{@name}]"
  end
end



puts "Customer.instances: %s" % Customer.instances.inspect
puts "Customer.create: %s" % Customer.create("Jason")
puts "Customer.create: %s" % Customer.create("Kenneth")
puts "Customer.find('Jason'): %s" % Customer.find("Jason")
puts "Customer.find('Mike'): %s" % Customer.find("Mike")

