require './array-list.rb'
require './linked-list.rb'

class Lotto
  def initialize
    @ticket = LinkedList.new
    while @ticket.size < 5
      auto_num = rand(55) + 1
      if !@ticket.include?(auto_num)
        @ticket.add(auto_num)
      end
    end
  end

  def display_ticket
    # @ticket.sort
    @ticket.display
  end

  def display_reverse_ticket
    @ticket.reverse
    @ticket.display
  end
end

lotto_sim = Lotto.new

puts "Your ticket is......"
lotto_sim.display_ticket

puts "Do the hokey pokey....."
lotto_sim.display_reverse_ticket
