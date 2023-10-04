def start_game
  puts "Hey, pour lancer ce jeu - tapes 1"
  print ">"
  start = gets.chomp

  while (start.to_i != 1 && start.to_i == 0) do
      puts "Hey, pour lancer ce jeu - tapes 1"
      print ">"
      start = gets.chomp
  end
  #rol_the_dice
  num_games = 100
average_rolls = average_finish_time(num_games)
puts "le nombre de tours moyen par #{num_games} tours pour arriver à la 10ème marche est #{average_rolls}"

end

def rol_the_dice
  steps = 0
  rolls = 0
  while steps < 10
    puts "Lancement les des"
      3.times do
          puts "..."
      end
      rolls += 1
      rol = Random.rand(1..6)
      case rol
      when 5, 6
          puts "t'as eu #{rol}"
          steps += 1
          puts "tu avances d'une marche, t'es sur marche #{steps}"
      when 1
        puts "t'as eu #{rol}"
        steps == 0 ?
        (steps = 0
        puts "toujours en bas") :
          (steps -= 1
          puts "il descend d'une marche, t'es sur marche #{steps}")
      else
        puts "t'as eu #{rol}"
        puts "rien ne se passe, t'es toujours sur marche #{steps}"
      end
  end
  puts "Bravo"
  return rolls
end
def average_finish_time(num_games)
    total_rolls = 0
  
    num_games.times do
      total_rolls += rol_the_dice
    end
  
    average_rolls = total_rolls / num_games.to_i
    return average_rolls
end

start_game
