class HashTable
  def initialize(list, length=10)
    @list = list
    @length = length
  end

  def keys
    @list.map do |name|
      name.sum % @length
    end
  end

  def linked_list_array
    pairs = keys.zip(@list)
    pairs.map do |pair|
      LinkedList.new(pair[0], pair[1])
    end
  end
end
