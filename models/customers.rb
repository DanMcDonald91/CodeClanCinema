require('pg')
require_relative("../db/sql_runner")


class Customers
  attr_reader :id
  attr_accessor :name, :funds


  def initialize
    @id = options['id'].to_i
    @name = options ['name']
    @funds = options['funds'].to_i

  end

  

  end
