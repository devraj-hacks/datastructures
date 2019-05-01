module LinkedList
  class Node
    attr_accessor :data, :link
    def initialize(data, link)
      @data = data
      @link = link
    end
  end

  class Stack
    def initialize
      @top = nil
    end

    def push(ele)
      @top = Node.new(ele, @top)
    end
    alias_method :'<<', :push

    def pop
      raise "Stack empty" if is_empty?
      data = @top.data
      @top = @top.link
      data
    end

    def top
      unless is_empty?
        @top.data
      else
        p "stack Empty"
      end
    end

    def display
      tmp = @top
      while !tmp.nil?
        p tmp.data
        tmp = tmp.link
      end
    end

    def size
      tmp = @top
      count = 0
      while !tmp.nil?
        count += 1
        tmp = tmp.link
      end
      count
    end
    def is_empty?
      @top.nil?
    end
  end
end
