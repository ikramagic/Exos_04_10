puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?" 

nombre_etages = gets.chomp.to_i

if nombre_etages >= 1 && nombre_etages <= 25
    nombre_etages.times do |i|
      spaces = nombre_etages - i - 1
      hashes = i * 2 + 1
      puts " " * spaces + "#" * hashes
    end
end
