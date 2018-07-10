require './lib/hashmap'

describe HashMap do
  it 'should return nil for non-existent keys' do
    hm = HashMap.new

    expect(hm['key']).to be_nil
  end

  it 'should be able to calculate a numeric key' do
    hm = HashMap.new

    input = "Hello"
    expected = 0 # Sum of ascii % length
    result = hm._calculate(input)

    expect(result).to be(expected)
  end

  it 'should be able to calculate a numeric key' do
    hm = HashMap.new

    input = "Jello"
    expected = 2 # Sum of ascii % length
    result = hm._calculate(input)

    expect(result).to be(expected)
  end
end
