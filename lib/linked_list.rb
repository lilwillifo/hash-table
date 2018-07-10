class LinkedList
  attr_reader :value, :next_node, :data
  def initialize(value, data)
    @value = value
    @data = data
    @next_node = nil
  end

  def insert(value, data)
    if @next_node.nil?
      @next_node = LinkedList.new(value, data)
    else
      @next_node.insert(value, data)
    end
  end
end
