def signup
    puts "définis un mot de passe"
    print ">"
    password = gets.chomp
    return password
end

def welcome_screen
    puts "bienvenue dans ta zone secrète"
end

def login(password)
    puts "rentres ton mot de passe"
    print ">"
    is_password = gets.chomp
    while is_password != password do 
        puts "tu t'est trompé.. recommences, stp"
        print ">"
        is_password = gets.chomp
    end
    welcome_screen
end

login(signup)