require_relative 'prime_assessment'
require 'terminal-table'

class PrimeGrid
  include PrimeAssessment
  
  attr_reader :gridsize, :prime_list, :number, :table, :rows

  def initialize(args)
    @gridsize = args.fetch(:gridsize)
    @prime_list = []
    @number = 2
    @table = Terminal::Table.new
    @rows = []
  end

  def generate_primes_list
    until prime_list.length == gridsize do
      prime_list << number if is_prime?(number)
      @number += 1
    end
  end
  def add_title
    table.title = "Primes Grid"
  end
  def add_header
    rows << [""] + prime_list
  end
  def add_solutions
    index = 0
    prime_list.each do
      next_row = []
      next_row << prime_list[index]
      next_row += prime_list.map{|prime| prime_list[index] * prime}
      index += 1
      rows << next_row
    end
  end
  def add_rows
    table.rows = rows
  end
  def generate_table
    generate_primes_list
    add_title
    add_header
    add_solutions
    add_rows
  end
end
