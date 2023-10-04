

def signup
  puts "Mot de passe :"
  password = gets.chomp
  return password
end

def login(correct_password)
  attempts = 3
  while attempts > 0
    puts "Entrez votre mot de passe :"
    input_password = gets.chomp
    if input_password == correct_password
      return true
    else
      puts "Mot de passe incorrect. Il vous reste #{attempts - 1} essais."
      attempts -= 1
    end
  end
  return false
end

def welcome_screen
  puts "Bienvenue!"
  puts "Voici les informations top secrètes de TOUTENKAMON SNOWDEN :"
  puts "1. RUBY est un langage affreux."
  puts "2. Les licornes existent, ce sont des bières."
  
end

def perform
  password = signup
  puts "Mot de passe défini avec succès. Vous pouvez maintenant vous connecter."
  
  if login(password)
    welcome_screen
  else
    puts "Accès refusé. Trop de tentatives incorrectes."
  end
end

perform

# 1. Le programme commence en définissant une méthode signup pour permettre à l'utilisateur de créer un mot de passe.
#    Le mot de passe saisi sera stocké dans la variable 'password'.

# 2. Ensuite, la méthode login est définie. Elle demande à l'utilisateur de saisir son mot de passe et le compare
#    au mot de passe défini précédemment. Si l'utilisateur saisit le bon mot de passe, la méthode renvoie 'true',
#    sinon elle permet à l'utilisateur de réessayer jusqu'à trois tentatives, après quoi l'accès est refusé.

# 3. La méthode welcome_screen affiche un message de bienvenue et des informations top secrètes si l'utilisateur
#    a réussi à se connecter avec le bon mot de passe.

# 4. La méthode perform orchestre l'ensemble du processus. Elle commence par appeler signup pour définir le mot de passe,
#    puis invite l'utilisateur à se connecter. Si la connexion réussit, elle affiche l'écran d'accueil grâce à la
#    méthode welcome_screen.

# 5. Enfin, tout le programme est déclenché en appelant la méthode perform, ce qui permet à l'utilisateur de
#    définir son mot de passe, de se connecter et d'accéder à l'espace secret (ou d'être refusé en cas d'échec).
