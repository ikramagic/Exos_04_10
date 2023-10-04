def ask_first_name
    puts "Hey! Comment tu t'appeles?"
    print ">"
    first_name = gets.chomp
    return first_name
end

def say_hello (name)
    puts "Bonjour! #{name}"
end

say_hello(ask_first_name)