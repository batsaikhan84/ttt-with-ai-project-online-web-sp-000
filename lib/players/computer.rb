module Players
  class Computer < Player
    def move(board)
      #WIN_COMBINATIONS = [[0,1,2], [3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
      valid_moves = ["1","2","3","4","5","6","7","8"]
      n = true
      i = 0
      while n
        return move = valid_moves[i]
        i += 1
      end
    end
  end
end