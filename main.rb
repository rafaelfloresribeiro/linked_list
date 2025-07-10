# frozen_string_literal: true

require 'pry-byebug'

# Will work as linked list
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def print
    p @head
  end
end

# will work as a node
class Node
  attr_accessor :data, :next_node

  def initialize(data)
    self.data = data
    @next_node = nil
  end
end

abc = LinkedList.new
abc.append(10)
abc.append(20)
abc.append(209)
abc.append('420')
abc.append('what')
abc.print
