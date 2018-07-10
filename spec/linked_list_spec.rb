require './lib/linked_list'

describe LinkedList do
  let(:data) { 10 }

  it 'should hold data' do
    ll = LinkedList.new(data)

    expect(ll.data).to be(data)
  end
end
