class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    stones = [:stone,:stone,:stone,:stone]
    temp_arr=  []
    6.times {temp_arr << stones}
    temp_arr << []
    6.times {temp_arr << stones}
    temp_arr << []
    @cups = temp_arr
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > @cups.size
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    size = stones.size
    stones.size.times do |i|
      pop = stones.pop
      @cups[start_pos + i] << [pop]
    end
    p @cups



  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
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
    player1_count = @cups[6].count
    player2_count = @cups[13].count

    if player1_count == player2_count
      :draw
    else
      player1_count > player2_count ? @name1 : @name2
    end
  end
end
