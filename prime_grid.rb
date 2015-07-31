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
end
