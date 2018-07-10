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

  def find(data)
    return self if @data == data
    return nil if @next.nil?
    
    @next.find(data)
  end
end
