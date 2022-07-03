require 'rspec'
require './greeting.rb'

RSpec.describe "Main" do
	it "Test one. If the age is unreal" do
		a = "Kimura"
		b = "Tenko"
		c = -1
		expect(greeting(a, b, c)).to eq(1)
	end

	it "Test two. If age is less than 18" do
		a = "Kimura"
		b = "Tenko"
		c = 14
		expect(greeting(a, b, c)).to eq(0)
	end

	it "Test three. If age is over 18" do
		a = "Kimura"
		b = "Tenko"
		c = 27
		expect(greeting(a, b, c)).to eq(1)
	end
end