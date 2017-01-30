require('pg')
require_relative('../db/sql_runner')

class Film

  def initialize(options) 
    @id = options['id'].to_i
    @title = options ['title']
    @price = options ['funds'].to_i

  end
    def save()
      sql = "INSERT INTO films (title, price) VALUES ('#{ @title }', #{ @price }) RETURNING id"
      film = SqlRunner.run( sql ).first
      @id = film['id'].to_i
    end
 
 def update
  sql = "UPDATE customers SET (name, funds) = (#{@name}, (#{@funds} WHERE id = (#{@id};"
SqlRunner.run(sql)
  end

  


