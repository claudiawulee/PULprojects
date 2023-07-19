class Jack
    attr_reader :phrases
    def initialize(phrases)
        @phrases = phrases
    end
    def randomizeRhyme
        #switching items in the array approach
        puts "Enter the number of times you would like to randomize the array: "
        num = gets.chomp.to_i
        num.times do 
            index1 = Random.rand(1...phrases.length())
            index2 = Random.rand(1...phrases.length())
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

phrases = []
phrases.push("the house that Jack built")
phrases.push("the malt that lay in")
phrases.push("the rat that ate")
phrases.push("the cat that killed")
phrases.push("the dog that worried")
phrases.push("the cow with the crumpled horn that tossed")
phrases.push("the maiden all forlorn that milked")
phrases.push("the man all tattered and torn that kissed")
phrases.push("the priest all shaven and shorn that married")
phrases.push("the rooster that crowed in the morn that woke")
phrases.push("the farmer sowing his corn that kept")
phrases.push("the horse and the hound and the horn that belonged to")

jack = Jack.new(phrases)
puts jack.printRhyme