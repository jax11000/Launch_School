VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']



def win?(first, second)
    (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == "spock" && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') || 
    (first == 'spock' && second == 'rock')
end



def display_result(player, computer)


  if win?(player, computer)
    
  prompt("You win!")
  
  elsif win?(computer, player)
  prompt("Computer Wins")
  
  else
  prompt("It's a tie")
end
end

def prompt(message)
  puts("=> #{message}")
end

loop do 
choice = ''
loop do
prompt("Choose one: #{VALID_CHOICES.join(', ')}")
choice = gets.chomp

  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("That is not a valid choice.")
  end
end

computer_choice = VALID_CHOICES.sample

puts "You chose #{choice}; computer chose #{computer_choice}"

display_result(choice, computer_choice)
prompt("Do you want to play again?")
answer = gets.chomp
break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")