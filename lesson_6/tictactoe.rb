require'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diag
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
TURN = 0

def place_piece!(brd, current_player)
  if current_player == 'Player'
    player_places_piece!(brd)
  elsif current_player == 'Computer'
    computer_places_piece!(brd)
  end
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line| # offense
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  if !square
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def joinor(arr, delimeter=', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimeter)
  end
end

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def alternate_player(turns)
  if turns.odd?
    current_player = 'Player'
  else
    current_player = 'Computer'
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd), ', ')}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end
player_score = 0
computer_score = 0
loop do
  board = initialize_board
  current_player = nil
  loop do
    TURN += 1
    display_board(board)
    prompt "Player: #{player_score} Computer: #{computer_score}"
    place_piece!(board, current_player)
    current_player = alternate_player(TURN)
    break if someone_won?(board) || board_full?(board)
    prompt "Player: #{player_score} Computer: #{computer_score}"
  end
  display_board(board)
  if someone_won?(board)
    if detect_winner(board) == "Player"
      player_score += 1
      prompt "Player won the game!"
    elsif detect_winner(board) == "Computer"
      computer_score += 1
      prompt "Computer won the game!"
    end
  end
  prompt "Player: #{player_score}, Computer: #{computer_score}"
  if player_score == 5
    break
  elsif computer_score == 5
    break
  end
end
prompt("Thanks for playing tic tac toe goodbye!")
