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
    raise "Stack underflow exception" if @index <= -1
    ele = @elements.delete_at(@index)
    @index -= 1
    ele
  end

  def display
    @elements.each do |ele|
      p ele
    end
  end

  def size
    count = 0
    @elements.each{|i| count += 1}
    count
  end
end