require_relative 'prime_assessment'

class PrimeGrid
  include PrimeAssessment
  
  attr_reader :gridsize, :prime_list

  def initialize(args)
    @gridsize = args.fetch(:gridsize)
    @prime_list = []

  end

  def generate_primes_list
  end
end
