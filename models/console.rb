require('pry-byebug')
require('pg')
require_relative('.models/customers')
require_relative('.models/films')
require_relative('.models/tickets')




customer1 = Customer.new({ 'name' => 'Daniel McDonald', 'funds' => 15})
customer2 = Customer.new({ 'name' => 'Ronald McDonald', 'funds' => 9})
customer3 = Customer.new({ 'name' => ' Corneilius Smhuck', 'funds' => 20})
customer4 = Customer.new({ 'name' => 'Ghandi', 'funds' => 12})

customer1.save
customer2.save
customer3.save
customer4.save

film_1 = Film.new ({ 'title' => 'T2 Trainspotting', 'price' => 8})
film_2 = Film.new ({ 'title' => 'Guardians Of The Galaxy 2', 'price' => 10})
film_3 = Film.new ({ 'title' => 'John Wick Chapter 2', 'price' => 10})
film_4 = Film.new ({ 'title' => 'World War Z 2', 'price' => 8})

film_5 = Film.new ({ 'title' => 'Dunkirk', 'price' => 6})

film_6 = Film.new ({ 'title' => 'LOGAN', 'price' => 6})

film_1.save
film_2.save
film_3.save
film_4.save
film_5.save
film_6.save

tickets_1 = Tickets.new ({ 'customer_id' => customer1.id, '
  film_id' => film_1.id})

tickets_2 = Tickets.new ({ 'customer_id' => customer2.id, 'film_id' => film_2.id})

tickets_3 = Tickets.new ({ 'customer_id' => customer3.id, 'film_id' => film_3.id})

tickets_4 = Tickets.new ({ 'customer_id' => customer4.id, 'film_id' => film_4.id})

tickets_1.save
tickets_2.save
tickets_3.save
tickets_4.save

binding.pry
nil
