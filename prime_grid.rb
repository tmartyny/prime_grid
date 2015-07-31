require_relative 'prime_assessment'

class PrimeGrid
  include PrimeAssessment
  
  attr_reader :gridsize

  def initialize(args)
    @gridsize = args.fetch(:gridsize)
  end

  def generate_primes_list
  end
end
