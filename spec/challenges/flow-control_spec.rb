require 'challenges/flow-control.rb'

RSpec.describe nil, "Flow Control Challenge" do
    context "Conditional Initialization" do
        it "should initialize variable that doesn't exist" do
            expect(initialValue nil).to eq "bar"
        end
    end
    
    context "Using &&" do
        it "should set word to lowercase if it is less than 10 characters" do
            expect(lowercase("Bob")).to eq "bob"
        end
        it "should not set to lowercase for greater than 10 characters" do
            expect(lowercase("Bob John Smith")).to eq false
        end
    end

    context "Attach conditional to end of statement" do
        it "should allow you to drive if over or equal to 17" do
            expect(canDrive(19)).to eq "YES"
        end
    end

    context "Using and" do
        it "should execute last function in chain if all true" do
            expect(start_car).to eq "Vroooooom!"
        end
    end
end