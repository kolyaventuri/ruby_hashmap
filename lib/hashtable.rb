class HashTable
  MAX_LENGTH = 10
  attr_reader :_array

  def initialize
    @_array = Array.new(10, nil)
  end

  def _calculate(key)
    chars = key.chars
    codes = chars.map { |char| char.ord }
    total = codes.sum

    total % MAX_LENGTH
  end

  def get(key)
    numeric_key = _calculate(key)

    if @_array[numeric_key].nil?
      nil
    else
      @_array[numeric_key].find(key).data
    end
  end

  def put(key, value)
    numeric_key = _calculate(key)

    if @_array[numeric_key].nil?
      @_array[numeric_key] = LinkedList.new(key, value)
    else
      return false unless @_array[numeric_key].find(key).nil?
      @_array[numeric_key].add(key, value)
    end
  end
end
