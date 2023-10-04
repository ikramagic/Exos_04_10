def ask_last_name
  puts "Dit moi ton nom !"
  print ">"
  last_name = gets.chomp
  return last_name
end

def ask_first_name
  puts "Maintenant ton prénom !"
  print ">"
  first_name = gets.chomp
  return first_name
end

def greet(last_name, first_name) 
    puts "Bienvenue,#{last_name} #{first_name}!"
end

def perform
    last_name = ask_last_name()
    first_name = ask_first_name()
    greet(last_name, first_name)
  end
  
perform()

 