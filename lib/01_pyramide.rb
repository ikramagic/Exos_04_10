
# Pyramidu Suka 

def build_ascending_pyramid(height)
  puts "La pyramida Suka :"
  height.times do |i|
    blocks = "*" * (i + 1)
    puts blocks
  end
end

puts "Etages, Blyat ?"
print "> "
height = gets.chomp.to_i

if height >= 1 && height <= 25
  build_ascending_pyramid(height)
else
  puts "Suka entre 1 et 25."
end
# Pyramide 2 Blyat

def half_pyramid(height)
  puts "Pyramide à moitié Suka :"
  height.times do |i|
    spaces = " " * (height - i - 1)
    blocks = "*" * (i + 1)
    puts "#{spaces}#{blocks}"
  end
end

puts "Salut, Combien t'en veux ?"
print "> "
height = gets.chomp.to_i

if height >= 1 && height <= 26
  half_pyramid(height)
else
  puts "Entre 1 et 25 BLYAAAATTTT!."
end

#complètu Blyat SUUUUKA!

def full_pyramid(height)
  puts "Voici la pyramide :"
  height.times do |i|
    spaces = " " * (height - i - 1)
    blocks = "#" * (i * 2 + 1)
    puts "#{spaces}#{blocks}#{spaces}"
  end
end

puts "DAVAIII Tu poses le nombre d'étage BLYAT!"
print "> "
height = gets.chomp.to_i

if height >= 1 && height <= 26
  full_pyramid(height)
else
  puts " BLYYYYAAAAAT 1 et 25."
end

#Code d'aurélien

 def full_pyramid
     print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? entre 1 et 25 >"
     nb = gets.chomp.to_i
     if nb >25
         print 'Votre nombre est trop grand !'
     else
         i = 1
         while i <= nb
             print " " * (nb - i)
             puts "*" * (2 * i - 1)
             i += 1
         end
     end
 end

 full_pyramid

 #Basé sur le code d'aurélien
 def wtf_pyramid            #La methode permet de generer la pyramide
  print "Salut, nb impair>"
  nb = gets.chomp.to_i
  if nb.even?
    puts "MUst impair !"
  else
    puts "Lelosange :"
  
    # Partie sup 
    i = 1
    while i <= (nb + 1) / 2
      puts " " * ((nb + 1) / 2 - i) + "*" * (2 * i - 1)
      i += 1
    end
  
    # Partie inf
    i = (nb - 1) / 2
    while i >= 1
      puts " " * ((nb + 1) / 2 - i) + "*" * (2 * i - 1)
      i -= 1
    end
  end
end

wtf_pyramid