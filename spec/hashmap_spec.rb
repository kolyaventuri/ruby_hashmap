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

  it 'should create a linked list when an item is added' do
    hm = HashMap.new
    keyValue = 9 # key gets mapped to 9
    value = 'value'

    hm.put('key', value)

    expect(hm._array[keyValue]).to be_an(Array)
    expect(hm._array[keyValue].data).to eq(value)
  end
end
