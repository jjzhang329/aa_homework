require "player.rb"
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = Player.new(name1, 1)
    @player2 = Player.new(name2, 2)
    @cups = Array.new(14){Array.new(4, :stone)}
      @cups[6] = []
      @cups[13] = [] 

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos == 6 || start_pos >= 13 
      raise "Invalid starting cup"
    elsif cups[start_pos] == []
      raise "Starting cup is empty"
    end 
  end

  def make_move(start_pos, current_player_name)
    cups[start_pos] = []
    end_pos = start_pos + 4
    
    if @player2.name == current_player_name && 6.between?(start_pos,end_pos)
      (start_pos+1...6).each {|i| cups[i] << :stone}
      end_pos += 1
      
      (7..end_pos).each {|i| cups[i] << :stone}
      
    elsif @player1.name == current_player_name && 13.between?(start_pos,end_pos)
      (start_pos+1...13).each {|i| cups[i] << :stone}
      end_pos = (end_pos + 1) % 14
      (0..end_pos).each {|i| cups[i] << :stone}
    else 
      end_pos = end_pos % 14 
      (start_pos+1..end_pos).each {|i| cups[i] << :stone}
    end 
    self.render
    
    # return :prompt if current_player_name == next_turn(end_pos)
    
  end

  def next_turn(ending_cup_idx)
    
    if ending_cup_idx.between?(7..13) 
      return @player2.name
    else 
      return @player1.name
    end 

      # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
