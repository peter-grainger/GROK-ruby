require "challenges/classes.rb"

describe RSpec.describe Ship, "Class Challenge" do
    it "initialise a class with an attribute shout with a value of AHOY" do
        ship = p Ship.new
        expect(ship.shout).to eq "AHOY"
    end
end