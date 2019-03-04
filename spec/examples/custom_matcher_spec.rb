require 'examples/target'

RSpec::Matchers.define :id_matcher do |_expected|
  match do |_actual|
    false
  end
end

describe Target do
  it 'has the correct match' do
    mock = double('custom-matcher')
    expect(mock).to receive(:run).with(id_matcher(Id.new))
    Target.run(mock)
  end
end

class Id
  attr_accessor :custom_value
  def initialise
    @custom_value = 1
  end
end
