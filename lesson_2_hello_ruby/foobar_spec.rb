require 'rspec'
require './foobar.rb'

RSpec.describe "Main" do
	it "Test one. Should return 20" do
		a = 20
		b = 22 # Может быть любое число
		expect(foobar(a, b)).to eq(b)
	end

	it "Test two. Should return 20" do
		a = 2 # Может быть любое число
		b = 20
		expect(foobar(a, b)).to eq(b)
	end

	it "Test three. The sum of two numbers is expected" do
		a = 324
		b = 22 
		expect(foobar(a, b)).to eq(a + b)
	end
end