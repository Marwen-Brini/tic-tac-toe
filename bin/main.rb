#!/usr/bin/env ruby

class Game
  def initialize()
    @player1 = ''
    @player2 = ''
    @players = { 'p1' => @player1, 'p2' => @players2 }
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
    puts 'type the name of the 1st player'
    @player1 = gets.chomp
    puts 'type the name of the 2nd player'
    @player2 = gets.chomp
  end
end

p = Game.new
p.draw_board
