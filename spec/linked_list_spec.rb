require './lib/linked_list'

describe LinkedList do
  let(:data)  { 10 }
  let(:data2) { 15 }
  let(:data3) { 20 }

  it 'should hold data' do
    ll = LinkedList.new('key', data)

    expect(ll.data).to be(data)
    expect(ll.next).to be_nil
  end

  it 'should accept a new node' do
    ll = LinkedList.new('key', data)

    ll.add('key2', data2)

    expect(ll.next).to_not be_nil
    expect(ll.next).to be_instance_of(LinkedList)
    expect(ll.next.data).to be(data2)
  end

  it 'should be able to add more than 2 nodes' do
    ll = LinkedList.new('key', data)

    ll.add('key2', data2)
    ll.add('key3', data3)

    expect(ll.next.next).to_not be_nil
    expect(ll.next.next).to be_instance_of(LinkedList)
    expect(ll.next.next.data).to be(data3)
  end

  it 'should be able to traverse the list' do
    ll = LinkedList.new('key', data)

    ll.add('key', data2)
    node = ll.add('key2', data3)

    expect(ll.find('key2')).to be(node)
  end

  it 'should return nil if no node is found' do
    ll = LinkedList.new('key', data)

    expect(ll.find('key2')).to be_nil
  end

  it 'should be able to generate a string representation of the data' do
    ll = LinkedList.new('key', data)

    ll.add('key', data2)
    ll.add('key2', data3)

    expected = "#{data},#{data2},#{data3}"

    expect(ll.to_s).to eq(expected)
  end

end
