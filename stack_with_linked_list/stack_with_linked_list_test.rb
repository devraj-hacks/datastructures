require_relative 'stack_with_linked_list'
require 'test/unit'

class LinkedList::StackTest < Test::Unit::TestCase
  def test_siple
    stack = LinkedList::Stack.new
    stack << "The"
    stack << "Quick"
    stack << "Brown"
    stack << "Fox"
    assert_equal(4, stack.size)
    assert_equal('Fox', stack.top)
    assert_equal('Fox', stack.pop)
    assert_equal(3, stack.size)
    assert_equal('Brown', stack.top)
  end
end