require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/linked_list.rb'

class LinkedListTest < Minitest::Test

  def setup
      @list = LinkedList.new(5, "Some Data")
  end

  def test_list_exists
    assert_instance_of LinkedList, @list
  end

  def test_list_intializes_with_value
    assert_equal 5, @list.value
  end

  def test_insert_adds_to_the_list
    added = @list.insert(50, "Here is some more data!")

    assert_equal added, @list.next_node
    assert_instance_of LinkedList, added
  end
end
