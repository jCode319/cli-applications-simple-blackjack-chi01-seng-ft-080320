require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = rand(1...12)
  return num
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(get_user_input)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
    display_card_total(card_total)
    return card_total
  else input == "s"
    return card_total
  end
   #binding.pry
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
