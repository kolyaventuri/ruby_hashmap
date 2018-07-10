class LinkedList
  attr_reader :data
  attr_reader :next

  def initialize(key, value)
    @data = value
    @key = key
    @next = nil
  end

  def add(key, value)
    @next = LinkedList.new(key, value)
  end

  def find(data)
    return self if @key == data
    return nil if @next.nil?

    @next.find(data)
  end

  def to_s
    result = []
    curr = self

    while curr != nil
      result.push(curr.data)
      curr = curr.next
    end

    result.join(',')
  end
end
