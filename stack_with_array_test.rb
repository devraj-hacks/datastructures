require_relative "stack_with_array"
require "test/unit"
 
class TestStack < Test::Unit::TestCase
 
  def test_simple
  	stack = Stack.new
    assert_equal(10, stack.push(10) )
    assert_equal(11, stack.push(11) )
    assert_equal(12, stack.push(12) )
    assert_equal(3, stack.size)
    assert_equal(12, stack.pop)
    assert_equal(2, stack.size)
    assert_equal(11, stack.pop)
    assert_equal(1, stack.size)
  end
 
end
