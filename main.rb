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
      @head = data
      @tail = data
    else
      node.next_node(node)
      @tail = node
    end
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
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def next_node(node)
    @next_node = node
  end
end

p abc = LinkedList.new
p abc.append(10)
p abc.append(20)
p abc.append(30)
p abc.append(25)
p abc.append(209)
