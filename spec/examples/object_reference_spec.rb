require 'examples/object-reference'

describe 'examples/object-reference' do
  it 'should be the same object' do
      a = Object.new
      expect(same_object(a)).to be a
  end

  it 'should not be the same object' do
      a = Object.new
      expect(clone_object(a)).not_to be a
  end
end