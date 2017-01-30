require('pry-byebug')
require('pg')
require_relative('./Customers')
require_relative('./Films')
require_relative('./Tickets')




customer1 = Customer.new({ 'name' => 'Daniel McDonald' , 'funds' => 15})
customer2 = Customer.new({ 'name' => 'Ronald McDonald' , 'funds' => 9})
customer3 = Customer.new({ 'name' => ' Corneilius Smhuck', 'funds' => 20})
customer4 = Customer.new({ 'name' => 'Ghandi', 'funds' => 12})

customer1.save
customer2.save
customer3.save
customer4.save

film1 = Film.new ({ 'title' => 'T2 Trainspotting', 'price' => 8})
film2 = Film.new ({ 'title' => 'Guardians Of The Galaxy 2', 'price' => 10})
film3 = Film.new ({ 'title' => 'John Wick Chapter 2', 'price' => 10})
film4 = Film.new ({ 'title' => 'World War Z 2', 'price' => 8})

film5 = Film.new ({ 'title' => 'Dunkirk', 'price' => 6})

film6 = Film.new ({ 'title' => 'LOGAN', 'price' => 6})

film1.save
film2.save
film3.save
film4.save
film5.save
film6.save

ticket1 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => @film1.id})


ticket2 = Ticket.new({ 'customer_id' => customer2.id, 'film_id' => @film2.id})


ticket3 = Ticket.new({ 'customer_id' => customer3.id, 'film_id' => @film3.id})


ticket4 = Ticket.new({ 'customer_id' => customer4.id, 'film_id' => film4.id})

tickets1.save
tickets2.save
tickets3.save
tickets4.save

binding.pry
nil
