require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/hash_table.rb'
require './lib/linked_list.rb'

class HashTableTest < Minitest::Test

  def setup
      names = ["Jake", "Margaret", "Megan", "Adam", "Clee",
               "Tyler", "Andrew", "Kolya", "Kelly", "Evan"]
      @hash = HashTable.new(names)
  end

  def test_table_exists
    assert_instance_of HashTable, @hash
  end


  def test_it_assigns_keys
    expected = [9, 9, 8, 1, 7, 8, 9, 2, 3, 4]
    assert_equal @hash.keys, expected
  end

  def test_linked_list_array
    @hash.linked_list_array.each do |ll|
      assert_instance_of LinkedList, ll
    end
  end

  def test_it_has_table
    assert_nil @hash.table[0]
    assert_nil @hash.table[5]
    assert_nil @hash.table[6]
    assert_equal @hash.table[9].length, 3
  end

  # def test_insert_adds_to_the_list
  #   added = @list.insert(50, "Here is some more data!")
  #
  #   assert_equal added, @list.next_node
  #   assert_instance_of LinkedList, added
  # end
end
