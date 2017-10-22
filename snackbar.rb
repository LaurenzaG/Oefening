def initialize_snackbar
  @patat_speciaal = 2.0
  @patat_mayonaise = 1.0
  @patat_pindasaus = 1.5
  @patat_currysaus = 2.5
end


def customer_name
  print "what's your name? "
  name = gets.chomp
  if name.length < 1 then
    print "Sorry, I didn't get that, please enter your name."
    customer_name
  end
  return name
end

def show_menu
  puts "1 - speciaal - #{@patat_speciaal} euro"
  puts "2 - mayonaise - #{@patat_mayonaise} euro"
  puts "3 - pindasaus - #{@patat_pindasaus} euro"
  puts "4 - currysaus - #{@patat_currysaus} euro"
end

def take_order
  print "Please enter the number of the order of your choice. "
  number = gets.chomp.to_i
  if number <1 || number >4 then
    print "please enter valid order"
    take_order
  end
  print "How many servings of patat would you like to order? "
  count = gets.chomp.to_i
  return number, count
end

def total_amount (menu_number, patat_count)
  price = @patat_speciaal if menu_number == 1
  price = @patat_mayonaise if menu_number == 2
  price = @patat_pindasaus if menu_number == 3
  price = @patat_currysaus if menu_number == 4

  amount = price * patat_count

  if amount > 20
    amount *= 0.9
  end

  if amount < 10 && amount > 0
    amount += 2.5
  end

  return amount
end

def snackbar
  initialize_snackbar
  puts "Welcome to the snackbar!"
  name = customer_name
  puts "Hello #{name.capitalize}, which patat would you like to order? "
  show_menu
  menu_number, patat_count = take_order


  total = total_amount(menu_number, patat_count)
  puts total
  if total > 0 then
    puts "Thank you for your order, your total will be: #{total} euro. "
    puts "Your order will be delivered as soon as possible. "
  else
    puts "Something went wrong, please try again. "
  end
end

snackbar
