class HashTable
  MAX_LENGTH = 10

  def _calculate(key)
    chars = key.chars
    codes = chars.map { |char| char.ord }
    total = codes.sum

    total % MAX_LENGTH
  end

  def get(key)
  end

  def put(value)
  end
end
