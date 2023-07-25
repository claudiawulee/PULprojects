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

    #checkpoint part 1
    def originalRhyme()
        printRhyme()
    end

    #checkpoint part 2
    def randomRhyme()
        randomizeRhyme(0)
        printRhyme()
    end

    #checkpoint part 3
    def originalEnding()
        randomizeRhyme(1)
        printRhyme()
    end

    def randomizeRhyme(startIndex)
        #switching items in the array approach
        print "Enter the number of times you would like to randomize the array: "
        num = gets.chomp.to_i
        num.times do 
            index1 = Random.rand(startIndex...phrases.length())
            index2 = Random.rand(startIndex...phrases.length())
            temp = phrases[index1]
            phrases[index1] = phrases[index2]
            phrases[index2] = temp
        end
    end
    
    def printRhyme
        phrases[0] << "." #appends a period to the first sentence (so every sentence has a period)
        nursery_rhyme = "" #final string containing all the lines
        string = "" #keeps track of previous sentence(s) used to make new sentences
        phrases.each do |phrase|
            phrase = "the " + phrase
            string = phrase + " " + string #creates new line
            nursery_rhyme += "This is " + string + "\n" #adds to the collection of other lines
        end
        nursery_rhyme
    end
    
end



# checkpt1 = Jack.new()
# puts checkpt1.originalRhyme

# checkpt2 = Jack.new()
# puts checkpt2.randomRhyme()

# checkpt3 = Jack.new()
# puts checkpt3.originalEnding()




