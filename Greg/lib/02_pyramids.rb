def afficher_pyramide(étages)
    if étages.even?
      puts "Le nombre d'étages doit être impair pour obtenir une pyramide correcte."
      return
    end
  
    moitié = étages / 2
  
    (1..moitié + 1).each do |n|
      espaces = moitié - n + 1
      dièses = 2 * n - 1
      puts ' ' * espaces + '#' * dièses
    end
  
    (moitié.downto(1)).each do |n|
      espaces = moitié - n + 1
      dièses = 2 * n - 1
      puts ' ' * espaces + '#' * dièses
    end
  end
  
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  étages = gets.chomp.to_i
  afficher_pyramide(étages)