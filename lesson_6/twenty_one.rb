SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
BUST_MARK = 21
STAY_MARK = 17

def prompt(str)
  puts "=> #{str}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(deck)
  values = deck.map { |card| card[1] }
  sum = 0
  values.each do |value|
    if value == 'A' # aces
      sum += 11
    elsif value.to_i == 0 # J K Q
      sum += 10
    else # regular CARDS
      sum += value.to_i
    end
  end
  # correct for aces
  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(x)
  total(x) > BUST_MARK
end

def deal_cards(player, dealer, deck)
  player << deck.pop(2)
  dealer << deck.pop(2)
  player.flatten!(1)
  dealer.flatten!(1)
end

def show_cards(player, dealer)
  prompt "Player cards: " + player.to_s
  prompt "Dealer cards: " + dealer[0].to_s + " Hidden"
end

def hit(player, deck)
  player << deck.pop
end

def dealer_stay?(dealer)
  dealer >= STAY_MARK
end

def totals(player, dealer)
  prompt "Player total: " + player.to_s + ' ' + "Dealer total: " + dealer.to_s
end

def who_won?(player, dealer)
  if player > dealer && player <= BUST_MARK
    prompt 'You win!'
  elsif dealer > BUST_MARK
    prompt 'You win dealer busted!'
  elsif dealer > player && dealer <= BUST_MARK
    prompt 'Dealer has won!'
  elsif player > BUST_MARK
    prompt 'Dealer has won you busted!'
  else
    prompt "It's a tie!"
  end
end
deck = initialize_deck
answer = nil
player = 0
dealer = 0
player_cards = []
dealer_cards = []
loop do # start game
  deal_cards(player_cards, dealer_cards, deck) # deal to both
  loop do # player turn
    show_cards(player_cards, dealer_cards)
    prompt "Hit or Stay?"
    answer = gets.chomp
    if answer.downcase == 'hit'
      hit(player_cards, deck)
    end
    player = total(player_cards)
    dealer = total(dealer_cards)
   # next if player == BUST_MARK
  break if answer.downcase == 'stay' || busted?(player_cards)
  end
break
end

if busted?(player_cards)
  show_cards(player_cards, dealer_cards)
  prompt "Sorry you busted!"
else
  puts "You chose to stay!"
  loop do
    dealer = total(dealer_cards)
    break if busted?(dealer_cards) || dealer_stay?(dealer)
    hit(dealer_cards, deck)
  end
end
who_won?(player, dealer)
totals(player, dealer)
