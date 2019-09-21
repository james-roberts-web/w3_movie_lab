require_relative('models/customer')
require_relative('models/film')
require_relative('models/screening')
require_relative('models/ticket')

require('pry')


# customers

customer1 = Customer.new({'name' => 'Garth Vader', 'funds' => 2000})
customer1.save

customer2 = Customer.new({'name' => 'Nigel Edgebaston', 'funds' => 1900})
customer2.save

customer3 = Customer.new({'name' => 'Rando Shandwick', 'funds' => 1500})
customer3.save



#films

film1 = Film.new({'title' => 'Pacific Rim', 'price' => 10})
film1.save

film2 = Film.new({'title' => 'John Wick', 'price' => 15})
film2.save

film3 = Film.new({'title' => 'Lord of The Rings', 'price' => 5})
film3.save

film4 = Film.new({'title' => 'WALL-E', 'price' => 10})
film4.save



#screenings

#film1
screening1 = Screening.new({'film_id' => film1.id, 'screening_time' => '2019-09-20 20:00', 'seats' => 5})
screening1.save

screening2 = Screening.new({'film_id' => film1.id, 'screening_time' => '2019-09-21 18:00', 'seats' => 5})
screening2.save

screening3 = Screening.new({'film_id' => film1.id, 'screening_time' => '2019-09-22 18:00', 'seats' => 5})
screening3.save

#film2
screening4 = Screening.new({'film_id' => film2.id, 'screening_time' => '2019-09-20 22:00', 'seats' => 5})
screening4.save

screening5 = Screening.new({'film_id' => film2.id, 'screening_time' => '2019-09-22 21:00', 'seats' => 5})
screening5.save

#film3
screening6 = Screening.new({'film_id' => film3.id, 'screening_time' => '2019-09-21 12:00', 'seats' => 5})
screening6.save

#film4
screening7 = Screening.new({'film_id' => film4.id, 'screening_time' => '2019-09-22 12:00', 'seats' => 5})
screening7.save


#tickets
ticket1 = Ticket.new({'customer_id' => customer1.id, 'screening_id' =>screening5.id })
ticket1.save

ticket2 = Ticket.new({'customer_id' => customer1.id, 'screening_id' =>screening7.id })
ticket2.save

ticket3 = Ticket.new({'customer_id' => customer2.id, 'screening_id' =>screening1.id })
ticket3.save

ticket4 = Ticket.new({'customer_id' => customer2.id, 'screening_id' =>screening4.id })
ticket4.save

ticket5 = Ticket.new({'customer_id' => customer2.id, 'screening_id' =>screening7.id })
ticket5.save

ticket6 = Ticket.new({'customer_id' => customer3.id, 'screening_id' =>screening1.id })
ticket6.save

ticket7 = Ticket.new({'customer_id' => customer3.id, 'screening_id' =>screening4.id })
ticket7.save

ticket8 = Ticket.new({'customer_id' => customer3.id, 'screening_id' =>screening6.id })
ticket8.save

ticket9 = Ticket.new({'customer_id' => customer3.id, 'screening_id' =>screening7.id })
ticket9.save


customer1.buy_film(film1)


binding.pry
