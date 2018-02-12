# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.find do |combo|
    position = []
    combo.all? do |i|
      position << board[i]
      position.uniq.count == 1
    end

  end
end

def full?(board)
  board.all? { |index| index == "X" || index == "O" }
end

def draw?(board)

end

def over?(board)

end

def winner(board)

end
