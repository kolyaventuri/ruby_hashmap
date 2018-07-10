require './lib/hashmap'

describe HashMap do
  it 'should return nil for non-existent keys' do
    hm = HashMap.new

    expect(hm['key']).to be_nil
  end
end
