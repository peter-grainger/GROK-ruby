require "challenges/methods"

describe 'Methods Challenge' do
    context "Default Parameters" do
        it "should populate 3 optional parameters and one mandatory" do
            expectedResult = {
                merkat: 1,
                monkey: 2,
                lion: 4,
                tiger: 8
            }
            expect(zoo(1,2, 8)).to eq expectedResult
        end

        it "should populate 2 optional parameters and one mandatory" do
            expectedResult = {
                merkat: 1,
                monkey: 2,
                lion: 10,
                tiger: 9
            }
            expect(zoo(1,2, 10, 9)).to eq expectedResult
        end
    end

    context "Variable Arguments" do
        it "should have multiple animals added as a variable argument" do
            expectedResult = {
                type: :bird,
                animals: ['parrot', 'budgie']
            }
            expect(add_animals(:bird, 'parrot', 'budgie')).to eq expectedResult
        end

        it "should have multiple animals added as an array with splat operator" do
            expectedResult = {
                type: :bird,
                animals: ['parrot', 'budgie']
            }
            expect(add_animals(:bird, *['parrot', 'budgie'])).to eq expectedResult
        end
    end

    context "Keyword arguments" do
        it "should add a parrot to the zoo and give a name" do
            expectedResult = {
                animal: :bird,
                type: :parrot,
                name: 'polly'
            }
            expect(add_animal(:bird, type: :parrot, name: 'polly')).to eq expectedResult
        end

        it "should add a budgie to the zoo with extra attributes" do
            expectedResult = {
                animal: :bird,
                type: :budgie,
                name: 'bob',
                colour: :gold
            }
            expect(add_animal(:bird, type: :budgie, name: 'bob', colour: :gold)).to eq expectedResult
        end
    end
end