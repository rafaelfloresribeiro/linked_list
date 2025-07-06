# frozen_string_literal: true

require 'pry-byebug'

# Will work as linked list
class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def append(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
    else
      node.next_node(data)
    end
    @tail = node
  end

  def tail(tail)
    @tail = tail
  end

  def head(head)
    @head = head
  end
end

# will work as a node
class Node
  attr_accessor :data

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def next_node(node)
    if @next_node.nil?
      @next_node = nil
      p @data = node
    else
      next_node(node)
    end
  end
end

abc = LinkedList.new
abc.append(10)
abc.append(20)
abc.append(209)
abc.append('420')
abc.append('what')
