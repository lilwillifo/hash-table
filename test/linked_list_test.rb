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
  #
  # def test_total_starts_0
  #   assert_equal 0, @tree.total
  # end
  #
  # def test_insert_adds_to_total
  #   @tree.insert(4, "movie")
  #   @tree.insert(100, "another movie")
  #
  #   assert_equal 2, @tree.total
  # end
  #
  # def test_insert_adds_total_after_many_inserts
  #   num = @tree.insert(20, "movie")
  #   num2 = @tree.insert(5, "another movie")
  #   num3 = @tree.insert(99, "more text")
  #   num4 = @tree.insert(8, " ")
  #
  #   assert_equal 4, @tree.total
  # end

end
