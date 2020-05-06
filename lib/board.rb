class Board
  
  attr_accessor :cells
  
  def initialize
    self.reset!
  end
  
  def reset!
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end
  
  def position(input)
    input = input.to_i - 1
    @cells[input]
  end
  
  def full?
    @cells.all? {|value| value != " "}
  end
  
  def turn_count
    counter = 0
    @cells.each do |position|
      if position == "X" || position == "O"
        counter += 1
      end
    end
    counter
  end
  
  def taken?(input)
    if position(input) == " " || position(input) == ""
      false
    elsif position(input) == "X" || position(input) == "O"
      true
    else
      false
    end
  end
  
  def valid_move?(input)
      if input.to_i.between?(1,9) && !taken?(input) 
        true
      else
        false
      end
  end
  
  def update(input, player)
    input = input.to_i - 1
    @cells[input] = player.token
  end
  
  
end
  
