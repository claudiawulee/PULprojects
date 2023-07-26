require_relative 'Jack.rb'

#testing user class
describe Jack do
    #checkpoint 1 test
    it 'returns the first sentence in the original Jack rhyme' do
        jack = Jack.new()
        expect(jack.originalRhyme.start_with?("This is the house that Jack built.")).to eq(true)
    end
    #checkpoint 1 and 2 test
    it 'returns the same first sentence of the original Jack rhyme even after randomizing the poem' do
        jack = Jack.new()
        jack.randomRhyme(10)
        expect(jack.originalRhyme.start_with?("This is the house that Jack built.")).to eq(true)
    end
    #checkpoint 2 
    it 'returns a different sentence than the original jack rhyme' do
        jack = Jack.new()
        expect(jack.randomRhyme(100).start_with?("This is the house that Jack built.")).to eq(false)
    end
    #checkpoint 3
    it 'returns the same first sentence of the original Jack rhyme' do
        jack = Jack.new()
        expect(jack.originalEnding(10).start_with?("This is the house that Jack built.")).to eq(true)
    end
    #checkpoint 3
    it 'the last sentence is different from the original rhyme' do
        jack = Jack.new()
        expect(jack.originalEnding(10).end_with?("TThis is the horse and the hound and the horn that 
            belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that 
            woke the priest all shaven and shorn that married the man all tattered and torn that kissed 
            the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that 
            worried the cat that killed the rat that ate the malt that lay in the house that Jack built.")).to eq(false)
    end
   
end

#Notes from RubyConf video
#set up - instantiation and context do
#act - runs a function that causes a change 
#assert - expect()