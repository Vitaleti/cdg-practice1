require 'rspec'
require './test.rb'

RSpec.describe "test function" do
    describe "#max" do
        it "return max value" do
            expect(max([1, 2, 1234, -12, 0, 112, 3284])).to eq(3284)
        end
    end

    describe "#even" do
        it "return even values" do
            expect(even([1, 0, 12, 13, -13, -2])).to eq([0, 12, -2])
        end
    end

    describe "#multiply" do
        it "multiply all elements" do
            expect(multiply([0, 1, 2, 3, 4, 5])).to eq(120)
        end
    end
end

# RSpec.describe "greeting" do
#     describe "#log" do
#         it "returns the action and message" do
#             expect { log('OK', "Hello") }.to output("OK: Hello\n").to_stdout
#         end
#     end

#     describe "#greeting" do
#         it "returns the action and message" do
#             expect(greeting("John", 20)).to eq({ action: "OK", message: "Hello John, you are old enough to drive." })
#         end

#         context "if age is less than 18" do
#             it "returns the action and message" do
#                 expect(greeting("Naruto", 16)).to eq({ action: "error", message: "Hello Naruto, you are not drive a car." })
#             end

#             it "returns the action and message" do
#                 expect(greeting("Naruto", -3)).to eq({ action: "error", message: "Hello Naruto, you are not drive a car." })
#             end
#         end
#     end
# end