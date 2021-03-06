def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum 
end

def hit?(num)
  prompt_user
  user_input = get_user_input
  card_total = num
  if user_input == 'h'
    new_card = deal_card
    card_total += new_card
  elsif user_input == 's'
    card_total 
  else
    invalid_command
    prompt_user
    get_user_input
  end 
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_total = initial_round

  until current_total > 21 do
    current_total = hit?(current_total)
    puts "Your cards add up to #{current_total}"
  end 
  puts "Sorry, you hit #{current_total}. Thanks for playing!"
end
    
