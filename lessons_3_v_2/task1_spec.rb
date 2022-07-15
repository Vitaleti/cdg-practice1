require 'rspec'
require './test.rb'

RSpec.describe 'Test function' do
    describe '#reception_string' do
        it 'returns a power of two' do
            string = 'qwerCS'
            expect(reception_string(string)).to eq(64)
        end

        it 'returns a reversed string' do
            string = 'qwerty'
            expect(reception_string(string)).to eq('ytrewq')
        end
    end
end