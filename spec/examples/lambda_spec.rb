require 'examples/lambdas'

describe 'lamda/proc example' do
  it 'should return a value' do
      expect(lambda_method).to eq 2
  end

  it 'should return from outer scope for proc' do
    expect(proc_method).to eq nil
  end
end