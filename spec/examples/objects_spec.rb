require 'examples/objects'

describe 'objects example' do
  it 'should return the correct class types' do
      expect(class_example).to eq ({
        string: String,
        also_string: String,
        number: Integer,
        bool: FalseClass
      })
  end
end