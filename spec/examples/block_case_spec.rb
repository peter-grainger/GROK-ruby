require 'examples/block_case'
describe 'examples/block_case' do
  it 'should pass block to case' do
      expect(block_case(2) { |number| number == 2 }).to eq "block equals"
  end
end