# lib/03_stairway.rb

# Méthode pour simuler un tour de jeu
def play_turn
  dice = rand(1..6)
  case dice                                                                           # 1. Le programme simule un jeu où tu dois monter 10 marches en fonction du résultat d'un jet de dé.
  when 5, 6
    puts "Vous avez fait un #{dice} ! Vous avancez d'une marche."   
    return 1
  when 1                                                                              # 2. La méthode play_turn simule un tour de jeu en lançant un dé (génère un nombre aléatoire entre 1 et 6).
    puts "Vous avez fait un #{dice} ! Vous descendez d'une marche."
    return -1
  else                                                                                
    puts "Vous avez fait un #{dice} ! Rien ne se passe."
    return 0                                                                          # 3. Si tu fais un 5 ou 6, tu avances d'une marche et la méthode retourne 1.
  end
end

# Méthode pour jouer une partie complète jusqu'à atteindre la 10ème marche
def play_game
  position = 0
  turns = 0

  while position < 10
    position += play_turn
    turns += 1
    puts "Vous êtes maintenant à la marche #{position}."
  end

  return turns
end

# Méthode pour calculer le nombre moyen de tours nécessaires pour atteindre la 10ème marche
def average_finish_time(num_games)
  total_turns = 0

  num_games.times do
    total_turns += play_game
  end

  average_turns = total_turns.to_f / num_games
  return average_turns
end

# Exécution du programme pour une partie
puts "Bienvenue dans le jeu des escaliers !"
play_game
puts "Félicitations, vous avez atteint la 10ème marche !"

# Calcul de la moyenne sur 100 parties
num_games = 100
average_turns = average_finish_time(num_games)
puts "Sur #{num_games} parties, le nombre moyen de tours pour atteindre la 10ème marche est de #{average_turns} tours."
