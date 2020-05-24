require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   card_total = deal_card + deal_card
   display_card_total(card_total)
   return card_total
end

def hit?(card_total)
  valid_inputs = ["h", "s"]

  prompt_user
  user_input = get_user_input

  until valid_inputs.include?(user_input)
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input == "h"
    card_total += deal_card
  end
  card_total

# alternative solution
# def hit?(current_card_value)
#   prompt_user
#   user_input = get_user_input
#   while user_input != "h" && user_input != "s"
#     invalid_command
#     prompt_user
#     user_input = get_user_input
#   end
#   if user_input == "h"
#     current_card_value += deal_card
#   end
#   return current_card_value
# end

def invalid_command
    puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  welcome
  get_user_input
  total = initial_round
  until total > 21 do
  total = hit?(total)
  display_card_total(total)
  end
end_game(total)
end
runner
end