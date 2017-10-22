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

def take_order
  print "Please enter the number of the order of your choice. "
  number = gets.chomp
  print "How many servings of patat would you like to order? "
  count = gets.chomp.to_i
  return number, count
end

def total_amount (menu_nr, patat_cnt)
  price = 0
  price = @patat_speciaal if menu_nr == 1
  price = @patat_mayonaise if menu_nr == 2
  price = @patat_pindasaus if menu_nr == 3
  price = @patat_currysaus if menu_nr == 4

  amount = price * patat_cnt

  if amount > 20
    amount *= 0.9
  end
  if amount < 10 && amount > 0
    amount += 2.5
  end

  return amount
end
