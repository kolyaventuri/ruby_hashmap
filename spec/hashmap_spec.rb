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

    expect(ht._array[keyValue]).to be_a(LinkedList)
    expect(ht._array[keyValue].data).to eq(value)
  end

  it 'should add to the linked list if the keys added are the same' do
    ht = HashTable.new
    keyValue = 9
    value = 'something else'

    ht.put('key', 'something')
    ht.put('be', value) # be and key both have the same calculated value

    expect(ht._array[keyValue].next).to be_a(LinkedList)
    expect(ht._array[keyValue].next.data).to eq(value)
  end

  it 'should reject duplicate keys' do
    ht = HashTable.new

    ht.put('key', 'data')

    result = ht.put('key', 'other data')
    expect(result).to be(false)
  end

  it 'should be able to retrieve a key' do
    ht = HashTable.new

    key = 'name'
    value = 'George'

    ht.put('key', 'data')
    ht.put('key2', 'data2')
    ht.put(key, value)

    expect(ht.get(key)).to eq(value)
  end

  it 'should be able to print the linked list' do
    ht = HashTable.new

    ht.put('key', '1') # 9
    ht.put('be', '2') # 9
    ht.put('Hello', '3') # 0

    expected = '0->3\n1->\n2->\n3->\n4->\n5->\n6->\n7->\n8->\n9->1,2'

    expect(ht.to_s).to eq(expected)
  end
end
