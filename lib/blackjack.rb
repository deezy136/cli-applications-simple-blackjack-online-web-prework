

 def welcome
  # code #welcome here
    puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card_dealt = rand (1..11)
  return card_dealt
end

def display_card_total(card_total)
  # code #display_card_total here
  total = 0 
 total += card_total
  
 puts "Your cards add up to #{total}" 
 total 
end

def prompt_user
  # code #prompt_user here
  puts ("Type 'h' to hit or 's' to stay")
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
  puts user_input
  user_input
end

def end_game(card_total)
  # code #end_game here
 puts ("Sorry, you hit #{card_total}. Thanks for playing!")
 
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  sum = card_one + card_two
  display_card_total(sum)
end

def invalid_command 
 puts "Please enter a valid command"
 
end

def hit?(card_total)
  prompt_user 
  user_input = get_user_input  
  
  if user_input == 'h'
    card_total += deal_card 
    puts card_total
  elsif user_input == 's'
    card_total
    prompt_user
  else
  invalid_command
  prompt_user
  user_input
   end

end





#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  prompt_user
end
