class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new()}
    place_stones
  end

  def place_stones
    stones = [:stone,:stone,:stone,:stone]
    @cups.each_with_index do |cup,idx|
      next if idx == 6 || idx == 13

      cup.concat(stones)
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > @cups.size
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    current_pos = start_pos

    until stones.empty?
      current_pos += 1
      current_pos = 0 if current_pos > 13

      if current_pos == 6
        @cups[6] << stones.pop if current_player_name == @name1
      elsif current_pos == 13
        @cups[13] << stones.pop if current_player_name == @name2
      else
        @cups[current_pos] << stones.pop
      end


    end
    render
    next_turn(current_pos)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].size == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    render

    (0..5).all?{|i| @cups[i]}



    (7..12).each do |i|
      return false if @cups[i].any?
    end

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
