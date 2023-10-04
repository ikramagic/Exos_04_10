# 00_hello.rb

def ask_first_name  # on donne un nom à la règle qu'on va définir (aka la fonction), qu'on pourra ensuite "invoquer" avec ce nom
    puts "Donne-moi ton prénom s'il te plait, faut que je sauve ma mère..." # on demande l'affichage de ce texte
    print ">" # on indique avec ce symbole le début du champs de texte
    first_name = gets.chomp # on informe que ce qu'on appelle "first_name" sera maintenant l'input de l'utilisateur
    return first_name # quand on "invoquera" ask_first_name, on veut que ça nous renvoie le résultat de la saisie de l'utilisateur
end

def greet(first_name) # on nomme notre fonction greet pour l'invoquer, et on veut comme "outil" DLC first_name qu'on a récupéré plus tot
    puts "Bonjour, #{first_name} !" # on demande à ce que ça affiche le texte + la valeur du DLC first_name donné par l'utilisateur plus tot
end

def perform # on organise l'éxecution et l'ordre d'éxecution des fonctions précédentes, un combo
    first_name = ask_first_name # on indique que first_name sera défini et donc localisé grâce à l'execution du ask_first name
    greet(first_name) # on demandera ensuite l'execution de greet en utilisant le first_name localisé grâce à la ligne précédente
  end

perform # on invoque l'execution du combo en utilisant son nom comme raccourci