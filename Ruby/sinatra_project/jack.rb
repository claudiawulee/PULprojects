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
    def original_rhyme()
        print_rhyme(phrases)
    end

    #checkpoint part 2
    def random_rhyme(num)
        arr = randomize_rhyme(0,num)
        print_rhyme(arr)
    end

    #checkpoint part 3
    def original_ending(num)
        arr = randomize_rhyme(1,num)
        print_rhyme(arr)
    end

    def randomize_rhyme(startIndex, num)
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
    
    def print_rhyme(arr)
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
# checkpt1 = jack.new()
# puts checkpt1.original_rhyme

# checkpt2 = jack.new()
# puts checkpt2.random_rhyme(3)

# checkpt3 = jack.new()
# puts checkpt3.original_ending(3)






