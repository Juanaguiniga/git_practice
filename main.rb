require "colorize"
require_relative 'git'



class Main
  include Git 
  
  def self.menu
    puts 'Main Menu'.colorize(:cyan)
    puts '1: enter git command'.colorize(:cyan)
    puts '2: exit'.colorize(:cyan)  
    choice = gets.to_i
    case choice
    when 1 
      puts 'enter git command'.colorize(:cyan)
      Git.git_cmd(gets.strip)
    
    when 2
      Git.config  
      
    when 3
      exit
    else
      puts 'Invalid Choice'.colorize(:cyan)
    end
    menu
  end
end

Main.menu