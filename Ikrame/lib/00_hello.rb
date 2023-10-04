# 00_hello.rb

def say_hello # on donne un nom à la règle à venir, qu'on pourra ensuite "invoquer" avec ce nom
    puts "Bonjour #{first_name}, on va sauver ma mère." # on définit la règle comme étant affiche "this"
end

def ask_first_name
    puts "Donne-moi ton prénom s'il te plait, faut que je sauve ma mère aussi..."
    print ">"
    first_name = gets.chomp
    return first_name
end

say_hello # on invoque l'execution de la règle en utilisant son nom comme raccourci