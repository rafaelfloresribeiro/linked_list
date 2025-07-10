# frozen_string_literal: true

require 'pry-byebug'

# Will work as linked list
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def preppend(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def append(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
    else
      @tail.next_node = node
    end
    @tail = node
  end

  def index(index = nil)
    counter = 1
    pointer = @head
    if index.nil?
      until pointer.next_node.nil?
        counter += 1
        pointer = pointer.next_node
        return counter if pointer.next_node.nil?
      end
    else
      while index != counter - 1
        counter += 1
        pointer = pointer.next_node
      end
      pointer
    end
  end

  def pop
  end

  def print_head
    @head.data
  end

  def print_tail
    @tail.data
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
abc.preppend('gato')
p abc.index
p abc.index(5)
