require_relative 'node'

class LinkedList
  attr_accessor :head, :tail

  def append(value)
    if @head.nil?
      @tail = @head = Node.new(value)
    else
      @tail.next_node = Node.new(value)
      @tail = @tail.next_node
    end
  end

  def to_s
    return 'nil' if @head.nil?

    ptr = @head
    list_to_s = ''
    until ptr.nil?
      node_to_s = "( #{ptr.value} ) -> "
      list_to_s += node_to_s
      ptr = ptr.next_node
    end
    "#{list_to_s} nil"
  end
end
