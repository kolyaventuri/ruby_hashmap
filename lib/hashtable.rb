class HashTable
  MAX_LENGTH = 10
  attr_reader :_array

  def initialize
    @_array = Array.new(MAX_LENGTH, nil)
  end

  def _calculate(key)
    key.chars.map(&:ord).sum % MAX_LENGTH
  end

  def get(key)
    numeric_key = _calculate(key)
    @_array[numeric_key].find(key).data if @_array[numeric_key]
  end

  def put(key, value)
    numeric_key = _calculate(key)

    @_array[numeric_key] ||= LinkedList.new(key, value)
    return @_array[numeric_key].add(key, value) if @_array[numeric_key].find(key).nil?

    false
  end

  def to_s
    @_array.map.with_index do |key, index|
      "#{index}->#{key.to_s}"
    end.join('\n')
  end

  def print
    puts self.to_s
  end
end
