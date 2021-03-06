require('pg')
require_relative('../db/sql_runner')
require_relative('Films')

class Ticket
  
  attr_accessor :customer_id, :film_id, :id

  def initialize(options)

  def initialize( options )
    @id = options['id'].to_i
    @customer_id = options['customer_id'].to_i
    @film_id = options['film_id'].to_i
  end
  end

  def save

    sql = "INSERT INTO tickets (customer_id, film_id) VALUES ('#{ @customer_id }', #{ @film_id }) RETURNING id;"
    film = SqlRunner.run( sql ).first
    @id = film['id'].to_i

  end

   def update
    sql = "UPDATE tickets SET (customer_id, film_id) = (#{@customer_id}, (#{@film_id} WHERE id = (#{@id};"
  SqlRunner.run(sql)

   end

   

  end
