require 'challenges/blocks'

describe 'Blocks Challenge' do
  context "yield" do
    it 'should yield the block' do
        expect(calculate(1) { |number| number + 1}).to eq 2
    end

    it 'should call the proc argument' do
        expect(calculate_block(1) { |number| number + 1}).to eq 2
    end
  end

  context 'block local variables' do
    it 'should correctly set block local varaiables' do
        expect(add_to_counter(2) {|count| count + 1}).to eq "Old count: 5, new count: 7, second count 24"
    end
  end

  
end