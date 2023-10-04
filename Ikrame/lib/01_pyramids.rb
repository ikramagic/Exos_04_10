#01_pyramids.rb

def how_many_rows # avant de s'attaquer à la construction, on a besoin de savoir combien de rangée, on va donc le demander
    puts "Salut, t'en veux combien ? C'est d'la pyramide illuminati, top KK-li-thé.'" # affiche la question
    print ">" #indique à l'user qu'il doit taper 
    rows = gets.chomp.to_i # permet à l'user de taper
    return rows # quand on "invoquera" how_many_rows, on veut que ça nous renvoie la valeur de rows (boomerang)
end

def build_half_pyramid(rows)
    for row in 0..rows # on demande à faire des rangées partant de 0 jusqu'à la valeur insérée
        (rows-row).times {print " "} # ajoute des espaces vides au debut qui est egale à la valeur demandée - la rangée (ex: j'ai demandé 5, j'ajoute 5-, 5-2 espaces pour commencer)
        row.times {print "#"} # demande les dièses dans les rangées, avec l'espaces
        puts # fait apparaitre le tout 
    end
end

def build_pyramid(rows) # on définit maintenant le plan de contruction de la dîte pyramide et on indique qu'on aura besoin de pêcher "rows" dans une autre méthode (=fonction = def)
    for row in 0..rows
        (rows-row).times {print " "} # ajoute des espaces vides au debut qui est egale à la valeur demandée - la rangée (ex: j'ai demandé 5, j'ajoute 5-1, 5-2 espaces pour commencer)
        row.times {print "#"} # demande les dièses dans les rangées, avec l'espaces
        (row-1).times {print "#" } # on crée une 2ème semi pyramide en miroir avec -1 qui viendra completer la première moitié, pour avoir une pyramide entière
        puts # fait apparaitre le tout 
        end
    end

def build_losange(rows) # on définit maintenant le plan de contruction de la dîte pyramide et on indique qu'on aura besoin de pêcher "rows" dans une autre méthode (=fonction = def)
    #STRATEJI : pour ce faire, on va combiner une pyramide de 1 à x avec une pyramide de x à 1 pour obtenir l'effet losange
    for row in 0..rows
        (rows-row).times {print " "} # ajoute des espaces vides au debut qui est egale à la valeur demandée - la rangée (ex: j'ai demandé 5, j'ajoute 5-1, 5-2 espaces pour commencer)
        row.times {print "#"}  # demande les dièses dans les rangées, avec l'espaces
        (row-1).times {print "#" }  # on crée une 2ème semi pyramide en miroir avec -1 qui viendra completer la première moitié, pour avoir une pyramide entière
        puts # fait apparaitre le tout 
    end
    for row in 0..rows
        row.times {print " "} # ajoute des espaces vides au debut qui est egale à la valeur demandée - la rangée (ex: j'ai demandé 5, j'ajoute 5-1, 5-2 espaces pour commencer)
        (rows-row).times {print "#" } # demande les dièses dans les rangées, avec l'espaces
        (rows-row-1).times {print "#"} # on crée une 2ème semi pyramide en miroir avec -1 qui viendra completer la première moitié, pour avoir une pyramide entière, mais ON DEMANDE AUSSI INVERSION POUR QUE CA AILLE CRESCENDO (unsure)
        puts
    end
end

def perform 
    rows = how_many_rows # on indique que la valeur de "rows" se trouvera dans "how_many_rows" et on en demande l'execution afin de définir "rows" pour la suite
    build_losange(rows) # build_xxx c'est comme notre plan de construction, on demande donc à l'executer à l'aide de "rows" qui viennent de la 1ère méthode
end

perform # on demande l'execution du combo 