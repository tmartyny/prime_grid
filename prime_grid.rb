require_relative 'prime_assessment'

class PrimeGrid
  include PrimeAssessment
  
  attr_reader :gridsize, :prime_list, :number

  def initialize(args)
    @gridsize = args.fetch(:gridsize)
    @prime_list = []
    @number = 2
  end

  def generate_primes_list
  end
end
