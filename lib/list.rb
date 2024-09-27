require_relative 'node'

class LinkedList
  def append(value)
    if @head.nil?
      @tail = @head = Node.new(value)
    else
      @tail.next_node = Node.new(value)
      @tail = @tail.next_node
    end
  end

  def preprend(value)
    if @head.nil?
      @tail = @head = Node.new(value)
    else
      new_node = Node.new(value)
      new_node.next_node = @head
      @head = new_node
    end
  end

  def size
    count = 0
    ptr = @head
    until ptr.nil?
      ptr = ptr.next_node
      count += 1
    end
    count
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

  def head
    if @head.nil?
      'nil'
    else
      @head.value
    end
  end

  def at(index)
    cur_idx = 0
    ptr = @head
    until cur_idx == index
      cur_idx += 1
      ptr = ptr.next_node
    end
    ptr.value
  end

  def pop
    ptr = @head
    ptr = ptr.next_node until ptr.next_node == @tail
    @tail = ptr
    ptr = ptr.next_node
    @tail.next_node = nil
  end

  def contains?(value)
    ptr = @head
    until ptr.nil?
      return true if ptr.value == value

      ptr = ptr.next_node
    end
    false
  end

  def find(value)
    cur_idx = 0
    ptr = @head
    until ptr.nil?
      return cur_idx if ptr.value == value

      ptr = ptr.next_node
      cur_idx += 1
    end
    'nil'
  end
end
