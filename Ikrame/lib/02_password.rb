#02_password.rb

def set_password # to choose credentials
    puts "Bienvenue au centre (Bl)Oups Security Services. Veuillez définir votre mot de passe :" # affiche ce texte
    print ">" # indique à l'utilisateur qu'il faut taper du texte
    password = gets.chomp # ce champs sera ce qu'on appelera "password" dans la suite
return password # quand on referera à "set_password" on voudra que ça nous renverra la valeur inputé dans "password"
end

def log_in(password) #
    puts "Veuillez saisir votre mot de passe pour accéder aux photos de Marylin Monroe et John F. Kennedy en 4K UHD :"
    print ">"
    input = gets.chomp
    if 
        (input) == (password)
        return welcome_screen
    else
        puts "Oh non ! Votre rang n'est pas assez élevé pour accéder à ce dossier !"
        return log_in(password)
    end
end

def welcome_screen
    puts "Bienvenue. Vous êtes reptilien. Vous avez le droit de savoir."
    puts "Marylin c'est juste une contraction de Marie-Hélène. Elle était française."
    puts "John est breton. Son vrai nom de famille, c'est Quenne D'y."
    puts "Accédez maintenant à la section O_Di_R_8 de votre desserveau reptilien pour visualiser les photos de ce dossier."
    puts "Merci d'avoir utilisé le terminal du centre centre (Bl)Oups Security Services pour votre requête."
end

def perform
    password = set_password
    log_in(password)
end

perform

#def log_in(password)
    #puts "Veuillez saisir votre mot de passe pour accéder aux photos de Marylin Monroe et John F. Kennedy en 4K UHD :"
    #print ">"
    #input = gets.chomp
    #if 
        #(input.to_s) == (password.to_s) 
        #puts "Vous êtes reptilien."
    #end
    #if
        #puts "Votre rang n'est pas assez élevé pour accéder à ce dossier. Désolé."
    #end
#end