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
        printRhyme(phrases)
    end

    #checkpoint part 2
    def randomRhyme(num)
        arr = randomizeRhyme(0,num)
        printRhyme(arr)
    end

    #checkpoint part 3
    def originalEnding(num)
        arr = randomizeRhyme(1,num)
        printRhyme(arr)
    end

    def randomizeRhyme(startIndex, num)
        #switching items in the array approach
        copy_arr = phrases.clone
        num.times do 
            index1 = Random.rand(startIndex...copy_arr.length())
            index2 = Random.rand(startIndex...copy_arr.length())
            temp = copy_arr[index1]
            copy_arr[index1] = copy_arr[index2]
            copy_arr[index2] = temp
        end
        copy_arr
    end
    
    def printRhyme(arr)
        arr[0] << "." #appends a period to the first sentence (so every sentence has a period)
        nursery_rhyme = "" #final string containing all the lines
        string = "" #keeps track of previous sentence(s) used to make new sentences
        arr.each do |phrase|
            phrase = "the " + phrase
            string = phrase + " " + string #creates new line
            nursery_rhyme += "This is " + string + "\n" #adds to the collection of other lines
        end
        nursery_rhyme
    end
    
end



# puts "--------------------------"
# checkpt1 = Jack.new()
# puts checkpt1.originalRhyme

# checkpt2 = Jack.new()
# puts checkpt2.randomRhyme(3)

# checkpt3 = Jack.new()
# puts checkpt3.originalEnding(3)






