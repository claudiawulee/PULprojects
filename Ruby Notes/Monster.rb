class Monster
    attr_reader :name, :actions #dont have to type @ symbol in class?
    def initialize(name)
        @name = name
        @actions = {screams: 0, scares:0, hides: 0 }
    end
    def say(&block)
        print "#{name} says..."
        block.call()
    end
    def scream(&block)
        actions[:screams] +=1
        print "#{name} screams "
        yield 
    end
    def scare(&block)
        actions[:scares ] +=1
        print "#{name} scares you!"
        yield
    end

    def hide(&block)
        actions[:hides ] +=1
        print "#{name} hides from you!"
        yield self if block_given?
    end
    def print_scoreboard
        puts "____________________________"
        puts "#{name} Scoreboard:"
        puts "____________________________"
        puts "- Screams: #{actions[:screams]}"
        puts "- Scares: #{actions[:scares]}"
        
    end
end

monster = Monster.new("Spider")
monster.say{ puts "Welcome to my home."}
monster.scream do 
    puts "BOO!"
end
monster.scare do 
    puts "AHH!"
end
monster.hide do |monster|
    puts "Running away and hiding"
    puts monster.actions.inspect
end
monster.print_scoreboard
