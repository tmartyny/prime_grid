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
    until prime_list.length == gridsize do
      prime_list << number if is_prime?(number)
      @number += 1
    end
  end
end
