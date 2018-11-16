require 'challenges/exceptions.rb'

describe 'Exceptions Challenge' do

    before do
        @file = double('file', :close => nil)
    end

  it 'should rescue SystemCallError' do
    expect { execute_block(@file) { raise SystemCallError, "raised"} }.not_to raise_error SystemCallError
  end

  it 'should return Saved SystemCallError! for SystemCallError' do
    expect(execute_block(@file) { raise SystemCallError, "raised"}).to eq 'Saved SystemCallError!'
  end


  it 'should return Saved ZeroDivisionError! for SystemCallError' do
    expect(execute_block(@file) { raise ZeroDivisionError, "zero Divisor"}).to eq "Saved ZeroDivisionError!"
  end

  it 'should close when exception occurs' do
    expect(@file).to receive(:close)
    execute_block(@file) { raise StandardError, "standard"}
  end

  it 'should close when no error occurs' do
    expect(@file).to receive(:close)
    execute_block(@file) {}
  end

  it 'should return the string "File Contents" if no issues' do
    expect(execute_block(@file) {}).to eq 'File Contents' 
  end
  

end