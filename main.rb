def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  puts '1: enter git command'
  puts '2: exit'
  choice = gets.to_i
  case choice
  when 1 
    puts 'enter git command'
    puts_git(gets.strip)
    menu
  when 2
    exit
  else
    puts 'Invalid Choice'
    menu
  end
end

menu