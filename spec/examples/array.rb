require 'examples/shorten_array.rb'

describe ShortenArray do
  it 'returns the first 2 items from the array' do
    best_array_ever = %w[best array ever]
    result = ShortenArray.first_two_items(best_array_ever)
    expect(result).to eq %w[best array]
  end
end
