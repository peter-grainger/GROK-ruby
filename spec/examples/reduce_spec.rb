require 'examples/reduce'

describe 'refactor to reduce' do
  class Bm
    def role_for_area(_argument)
      :full_access
    end

    def linked_clients
      [1, 1]
    end
  end

  it 'should return unique value' do
    expect(unique([Bm.new, Bm.new])).to eq [1]
  end
end
