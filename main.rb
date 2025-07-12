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
  rescue NoMethodError
    nil
  end

  def pop
    pointer = @head
    pointer = pointer.next_node while !pointer.next_node.nil? && !pointer.next_node.next_node.nil?
    pointer.next_node = nil
    @tail = pointer
  end

  def contains?(value)
    pointer = @head
    until pointer.next_node.nil?
      return true if pointer.data == value

      pointer = pointer.next_node
      return false if pointer.next_node.nil?
    end
  end

  def print_head
    @head
  end

  def print_tail
    @tail
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
# abc.preppend('gato')
p abc.contains?(10)
p abc.contains?(20)
p abc.contains?('420')
p abc.contains?(109)

