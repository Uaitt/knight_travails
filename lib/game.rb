# frozen_string_literal: true

# this class represents the whole game
class Game
  def initialize
    @board = Array.new(8) { Array.new(8, 0) }

    start = ask_for_start
    finish = ask_for_finish

    @knight = Knight.new(start)

    play_game(finish)
  end

  def ask_for_start
    user_input = false
    until user_input
      puts 'Enter the starting position of the knight (a,b format): '
      start = gets.chomp.split(',').map(&:to_i)
      if start.length != 2
        puts 'A position is made up of 2 cordinates! Try again.'
      else
        user_input = true
      end
    end
    start
  end
end
