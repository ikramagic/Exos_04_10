def sign_up
    puts "Choisis un mdp :"
    @password = gets.chomp
  end
  
  def login
    puts "Tape ton mdp"
    @logs = gets.chomp
  end
  
  def welcome
    while @logs != @password
      puts 
      puts
  "Mauvais mot de passe. Réessaie :"
      login
    end
    puts "Bienvenue sur l'accueil"
  end
  
  
  def call
    sign_up
    login
    welcome
  end
  
  call