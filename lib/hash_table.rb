require 'pry'
class HashTable
  def initialize(list, length=10)
    @list = list
    @length = length
  end

  def indexes
    @list.map do |name|
      name.sum % @length
    end
  end

  def pairs
    indexes.zip(@list)
  end

  def table
    table = Array.new(@length)
    pairs.each do |pair|
      index = pair.first
      data = pair[1]
      add_data(table, index, data)
    end
    table
  end

  def add_data(table, index, data)
    if table[index].nil?
      table[index] = LinkedList.new(index, data)
    else
      table[index].insert(index, data)
    end
  end

  def get(key)
    key.sum
  end

  def print_table
    table.each_with_index.map do |row, index|
      "#{index}-> #{build_row(row)}"
    end.join
  end

  def build_row(row)
    if row && row.next_node
     "#{row.data}, #{build_row(row.next_node)}"
    elsif row
      "#{row.data}\n"
    else
      "nil\n"
    end
  end
end
