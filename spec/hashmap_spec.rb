require './lib/hashtable'

describe HashTable do
  it 'should return nil for non-existent keys' do
    ht = HashTable.new

    expect(ht.get('key')).to be_nil
  end

  it 'should be able to calculate a numeric key' do
    ht = HashTable.new

    input = "Hello"
    expected = 0 # Sum of ascii % length
    result = ht._calculate(input)

    expect(result).to be(expected)
  end

  it 'should be able to calculate a numeric key' do
    ht = HashTable.new

    input = "Jello"
    expected = 2 # Sum of ascii % length
    result = ht._calculate(input)

    expect(result).to be(expected)
  end

  it 'should create a linked list when an item is added' do
    ht = HashTable.new
    keyValue = 9 # key gets mapped to 9
    value = 'value'

    ht.put('key', value)

    expect(ht._array[keyValue]).to be_an(Array)
    expect(ht._array[keyValue].data).to eq(value)
  end
end
