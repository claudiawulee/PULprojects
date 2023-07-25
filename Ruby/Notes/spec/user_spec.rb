require 'spec_helper'
require_relative '../user.rb'

#testing user class
describe User do
    it 'returns true when user is over 13' do
        User.new("Ziggy", 22)
        expect(user.over_13?).to eq(true)
    end
end