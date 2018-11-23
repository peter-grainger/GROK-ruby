require 'examples/block_yield'

describe 'lib/examples/block_yield' do
  it 'should yield a block' do
      expect(execute_block(2) { |number| number + 1 }).to eq 3
  end

  it 'should call a proc passed as argument' do
    expect(execute_block_argument(2) { |number| number + 1 }).to eq 3
  end

  it 'should throw error if no block is present' do
    expect { execute_block_argument(2) }.to raise_error(NoMethodError)
  end

end