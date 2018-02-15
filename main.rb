require "colorize"
require_relative 'git'



class Main
  include Git 
  
  def self.menu
    puts '2: exit'
    puts '1: enter git command'.colorize(:cyan)
    puts '2: exit'.colorize(:cyan)  
    choice = gets.to_i
    case choice
    when 1 
      puts 'enter git command'.colorize(:cyan)
      puts_git(gets.strip)
      
    when 2
      exit
    else
      puts 'Invalid Choice'.colorize(:cyan)
    end
    menu
  end
end

Main.menu