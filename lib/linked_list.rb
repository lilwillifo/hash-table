class LinkedList
  attr_reader :value, :next_node, :data
  def initialize(value, data)
    @value = value
    @data = data
    @next_node = nil
  end

  def insert(value, data)
    @next_node = LinkedList.new(value, data)
  end
end
