#MVP - latest updates on Jack.rb

class Jack
    attr_reader :phrases
    def initialize()
        @phrases = []
        phrases.push("house that Jack built")
        phrases.push("malt that lay in")
        phrases.push("rat that ate")
        phrases.push("cat that killed")
        phrases.push("dog that worried")
        phrases.push("cow with the crumpled horn that tossed")
        phrases.push("maiden all forlorn that milked")
        phrases.push("man all tattered and torn that kissed")
        phrases.push("priest all shaven and shorn that married")
        phrases.push("rooster that crowed in the morn that woke")
        phrases.push("farmer sowing his corn that kept")
        phrases.push("horse and the hound and the horn that belonged to")
    end

    def randomizeRhyme
        #switching items in the array approach
        puts "Enter the number of times you would like to randomize the array: "
        num = gets.chomp.to_i
        num.times do 
            index1 = Random.rand(0...phrases.length())
            index2 = Random.rand(0...phrases.length())
            temp = phrases[index1]
            phrases[index1] = phrases[index2]
            phrases[index2] = temp
        end
    end
    def printRhyme
        randomizeRhyme
        phrases[0] << "." #appends a period to the first sentence (so every sentence has a period)
        nursery_rhyme = "" #final string containing all the lines
        string = "" #keeps track of previous sentence(s) used to make new sentences
        phrases.each do |phrase|
            string = phrase + " " + string #creates new line
            nursery_rhyme += "This is " + string + "\n" #adds to the collection of other lines
        end
        nursery_rhyme
    end
end



jack = Jack.new()
puts jack.printRhyme





