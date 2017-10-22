def initialize_snackbar
  @patat_speciaal = 2.0
  @patat_mayonaise = 1.0
  @patat_pindasaus = 1.5
  @patat_currysaus = 2.5
end

def customer_name
  print "what's your name? "
  return gets.chomp
end

def show_menu
  puts "1 - speciaal - #{@patat_speciaal} 2.0"
  puts "2 - mayonaise - #{@patat_mayonaise} 1.0"
  puts "3 - pindasaus - #{@patat_pindasaus} 1.5"
  puts "4 - currysaus - #{@patat_currysaus} 2.5"
end
