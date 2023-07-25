require 'spec_helper'
require_relative 'Jack.rb'

#testing user class
describe Jack do
    it 'returns true when user is over 13' do
        user = User.new("Ziggy", 22)
        expect(user.over_13?).to eq(true)
    end
    it 'returns false when the user is under 13' do
        user = User.new("Ziggy", 12)
        expect(user.over_13?).to eq(false)
    end
end

#Notes from RubyConf video
#set up - instantiation and context do
#act - runs a function that causes a change 
#assert - expect()