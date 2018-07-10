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
  end

  def put(key, value)
  end
end
