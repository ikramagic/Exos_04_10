def wtf_pyramide(num)
  spaces = num / 2
  blocks = 1

  (1..num).each do |row|
    spaces.times { print " " }
    blocks.times { print "#" }
    puts ""

    if row < num / 2 + 1
      spaces -= 1
      blocks += 2
    else
      spaces += 1
      blocks -= 2
    end
  end
end

def render_wtf_pyramide 
    puts "Rentrez un nombre"
    print ">"
    num = gets.chomp.to_i

    while (num < 1 || num > 25 || num.even?) do
        puts "c'est pas entre 1 et 25 ou c'est pair"
        puts "Rentrez un nombre"
        print ">"
        num = gets.chomp.to_i
    end

    wtf_pyramide(num)
end

render_wtf_pyramide
    