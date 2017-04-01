# https://www.crondose.com/2017/01/code-interview-question-build-high-low-game-ruby/

def game
  num = rand(101)
  puts "Guess a number between 0 and 100"

  loop do
    guess = gets.chomp.to_i
    if guess == num
      puts "You've got it right! You win."
      break
    elsif guess < num
      puts "You've guessed too low. Guess again"
    elsif guess > num
      puts "You've guessed too high. Guess again"
    end
  end
  
end

# A game where the user has to guess the correct number. (high low)
# 1. Prompt the user to choose a number
# 2. program lets the user know if the correct number is higher or lower than their guess, and then lets them input a new guess
