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
  [2,4,6]]


def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    if board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]]==board[win_combo[2]] && position_taken?(board, win_combo[0])
      return win_combo
   end
  end
end


def full?(board)
  if !(board.any? {|i| i = " "})
    puts "The board is full"
  return TRUE
else
  puts "The board is not full"
  return FALSE 
  end
end


def draw? (board)
  if !(won?(board)) && (full?(board))
    return TRUE
 else
  return 
  FALSE
  end
end




def over?(board)
  if won?(board) || full?(board)|| draw?(board)
    puts "The game is over"
    return TRUE
  else
    puts "The game is still in progress"
    return FALSE
  end
  
end





