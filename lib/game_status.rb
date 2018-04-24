# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
#["X", "O", "X", "O", "X", "O", "O", "O", "X"]
def won? (board)
   WIN_COMBINATIONS.each.with_index do |win, i|
     o_arr = []
     x_arr = []
    board.each.with_index do |play, idx|
      if(play == "O")
        o_arr << idx
        if(o_arr == win)
          return win
        end
      elsif (play == "X")
        x_arr << idx
        if(x_arr == win)
          return win
        end
      end
    end
  end
  return false #if none of the above conditions are met, then it's either a draw or empty
end

def full? (board)
 !board.include? (" ")
end

def draw? (board)
  !won?(board) && full?(board)
end