class PrimeGrid
  
  attr_reader :gridsize

  def initialize(args)
    @gridsize = args.fetch(:gridsize)
  end
end
