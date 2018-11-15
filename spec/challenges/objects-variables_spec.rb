require 'challenges/objects-variables'

describe 'Variable Challenge' do
        it "assign the word foo to a variable" do
            expect(assign_foo_to_bar).to eq "bar"
        end

        it "assign the original object to the variable" do
            originalObject = "String Object"
            expect(same_object_reference(originalObject).object_id).to eq originalObject.object_id
        end

        it "assign a copy of the object to the variable" do
            originalObject = "String Object"
            expect(copy_object(originalObject).object_id).not_to eq originalObject.object_id
        end
end