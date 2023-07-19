class Rhyme
    attr_reader :phrases
    def initialize(phrases)
        @phrases = phrases
    end

    def createRhyme
        nursery_rhyme = "" #final string containing all the lines
        string = "" #keeps track of previous sentence(s) used to make new sentences
        phrases.each do |phrase|
            string = phrase + " " + string #creates new line
            nursery_rhyme += "This is the " + string + "\n" #adds to the collection of other lines
    end
    nursery_rhyme
    end
    
end

phrases = []
phrases.push("house that Jack built.")
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

nursery_rhyme = Rhyme.new(phrases)
puts nursery_rhyme.createRhyme
