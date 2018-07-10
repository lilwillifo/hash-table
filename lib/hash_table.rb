require 'pry'
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

  def pairs
    keys.zip(@list)
  end

  def table
    table = Array.new(@length)
    pairs.each do |pair|
      index = pair.first
      data = pair[1]
      if table[index].nil?
        table[index] = LinkedList.new(index, data)
      else
        table[index].insert(index, data)
      end
    end
    table
  end
end
