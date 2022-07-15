require 'rspec'
require './test1.rb'

RSpec.describe 'Main' do
    describe '#pokemon' do
        it 'return the hash of pokemon' do
            name = 'Pikachu'
            color = 'Yellow'
            expect(pokemon(name, color)).to eq({name: name, color: color})
        end
    end
end