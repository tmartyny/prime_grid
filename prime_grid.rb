require_relative 'prime_assessment'

class PrimeGrid
  include PrimeAssessment
  
  attr_reader :gridsize

  def initialize(args)
    @gridsize = args.fetch(:gridsize)
  end
end
