class LinkedList
  attr_reader :data
  attr_reader :next

  def initialize(value)
    @data = value
    @next = nil
  end

  def add(value)
    @next = LinkedList.new(value)
  end
end
