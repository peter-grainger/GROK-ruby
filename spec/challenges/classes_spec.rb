require "challenges/classes.rb"

describe RSpec.describe Ship, "Class Structure Challenge" do
    it "initialise a class with an attribute shout with a value of AHOY" do
        ship = Ship.new
        expect(ship.shout).to eq "AHOY"
    end

    it "Should set the new captain to John Silver" do
        ship = Ship.new
        captain = "John Silver"
        ship.captain = captain
        expect(ship.captain).to eq captain
    end

    it "should have a to_s method that summerises the method" do
        ship = Ship.new
        expect(ship.to_s).to eq "Captain Jack Sparrow has 3 sails and shouts AHOY!"
    end

    it "should set sails to be a private method" do
        ship = Ship.new
        expect { ship.sails }.to raise_error(NoMethodError)
    end
end

describe RSpec.describe ManOWar, "Class Inheritance Challenge" do
    it "should have a superclass of Ship" do
        manOWar = ManOWar.new
        expect(manOWar.class.superclass).to eq Ship
    end

    it "should have a new captain" do
        manOWar = ManOWar.new
        expect(manOWar.captain).to eq "John Silver"
    end

    it "should have the same shout as the superclass" do
        ship = Ship.new
        manOWar = ManOWar.new
        expect(manOWar.shout_out).to eq ship.shout
    end
end