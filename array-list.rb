# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [nil,nil,nil,nil,nil]
    @size = 0
  end

  def add(value)
    @storage[@size] = value
    @size += 1
  end

  # "deletes" last value
  def delete
    return nil if empty?
    #@storage[@size] = nil
    @size -= 1
  end

  def display
    @size.times do |i|
      puts @storage[i]
    end
  end

  def include?(key)
    @size.times do |i|
      if @storage[i] == key
        return true
      end
    end
    return false
  end

  def size
    return @size
  end

  def max
    return nil if empty?
    biggest = 0
    @size.times do |i|
      if @storage[i] > @storage[biggest]
        biggest = i
      end
    end
    return @storage[biggest]
  end

  def empty?
    @size == 0
  end

  def sort
    @storage.sort!
  end

  def reverse

  end

end
