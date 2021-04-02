#!/usr/bin/env ruby

class Game
  def initialize()
    @player1 = ''
    @player2 = ''
    @players = {}
    @choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player1_choices = []
    @player2_choices = []
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

  def user1_turn
    puts "its #{@player1}'s turn"
    v = gets.chomp
    while @player1_choices.include? v.to_i or @player2_choices.include? v.to_i
      puts 'please another choice, you already used this one'
      v = gets.chomp
    end

    until v.to_i.between?(1, 9)
      puts 'please pick a choice between 1 and 9'
      v = gets.chomp
    end
    @choices[v.to_i - 1] = 'O'
    @player1_choices.push(v.to_i)
    draw_board
  end

  def user2_turn
    puts "its #{@player2}'s turn"
    v = gets.chomp
    until v.to_i.between?(1, 9)
      puts 'please pick a choice between 1 and 9'
      v = gets.chomp
    end
    @choices[v.to_i - 1] = 'X'
    @player2_choices.push(v.to_i)

    draw_board
  end

  def run_turns
    system('clear')
    i = 0
    while i < 10

      user1_turn
      user2_turn

    end
    puts "it's a draw"
  end

  def run_game
    draw_board
    use_data
    run_turns
  end
end

p = Game.new
p.run_game
