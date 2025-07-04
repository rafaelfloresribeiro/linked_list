# frozen_string_literal: true

# Will work as linked list
class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
  end
end

# will work as a node
class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end

abc = Node.new(25)
p abc.value
