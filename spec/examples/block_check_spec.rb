require 'examples/block_check'
describe 'examples/block_check' do
    it 'should check for block before processing' do
        expect(block_check(1)).to eq nil
    end
end
