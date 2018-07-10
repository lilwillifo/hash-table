class LinkedList
  attr_reader :value, :next_node
  def initialize(value, data)
    @value = value
    @next_node = nil
  end

  def insert(value, data)
    @next_node = LinkedList.new(value, data)
  end
end
