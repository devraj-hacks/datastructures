# stack implementation with Array
class Stack

  def initialize
    @index = -1
    @elements = []
  end

  def push(ele)
    @index += 1
    @elements[@index] = ele
  end

  def pop
    p @index
    raise "Stack underflow exception" if @index <= -1
    @elements.delete_at(@index)
    @index -= 1
  end

  def display
    @elements.each do |ele|
      p ele
    end
  end
end