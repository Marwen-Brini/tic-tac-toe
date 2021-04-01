#!/usr/bin/env ruby

class Game
  def initialize()
    @player1 = ''
    @player2 = ''
    @players = {}
    @choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def draw_board
    puts '+---+---+---+'
    puts "| #{@choices[0]} | #{@choices[1]} | #{@choices[2]} |"
    puts '+---+---+---+'
    puts "| #{@choices[3]} | #{@choices[4]} | #{@choices[5]} |"
    puts '+---+---+---+'
    puts "| #{@choices[6]} | #{@choices[7]} | #{@choices[8]} |"
    puts '+---+---+---+'
  end

  def use_data
    puts "Welcome to Ruby's tic tac toe"
    puts 'type the name of the 1st player'
    @player1 = gets.chomp
    puts 'type the name of the 2nd player'
    @player2 = gets.chomp
    @players = { @player1 => 'x', @player2 => 'o' }
    puts "#{@player1} will use X and #{@player2} will use O "
  end

  def run_turns
    system 'clear'
    puts 'its player 1 turn'
    v = gets.chomp
    until v.to_i.between?(1, 9)
      puts 'please pick a choice between 1 and 9'
      v = gets.chomp
    end
    @choices[v.to_i - 1] = 'O'
    draw_board

    puts 'its player 2 turn'
    v = gets.chomp
    until v.to_i.between?(1, 9)
      puts 'please pick a choice between 1 and 9'
      v = gets.chomp
    end
    @choices[v.to_i - 1] = 'X'
    draw_board
  end

  def run_game
    draw_board
    use_data
    run_turns
  end
end

p = Game.new
p.run_game
