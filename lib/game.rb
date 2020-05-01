class Game
  
  attr_accessor :player_1, :player_2, :board
  WIN_COMBINATIONS = [[0,1,2], [3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

  def initialize(player_1="X", player_2="O", board = [])
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end
  
  def current_player
    if Board.turn_count % 2 == 0
      "X"
    else
      "O"
    end
  end
  
  def won?
    WIN_COMBINATIONS.detect {|win_combo_array| @board[win_combo_array[0]] == @board[win_combo_array[1]] && @board[win_combo_array[1]] == @board[win_combo_array[2]] && Board.taken?(win_combo_array[0])}
  end

  def draw?
   Board.full? && !Board.won?
  end
  
  def over?
    won? || Board.full? || draw?
  end
  
  def winner
    if won? && over?
      @board[won?[0]]
    else
      nil
    end
  end
  
  def turn
    puts "Please enter 1-9:"
    
    input = gets
    index = input.to_i - 1
    
    if Board.valid_move?(index)
      move(i, current_player)
      display_board
    else
      turn
    end
  end
  
  def play
    while !over?
      turn
    end
    if won?
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cat's Game!"
    end
  end
  
end
   
   
    