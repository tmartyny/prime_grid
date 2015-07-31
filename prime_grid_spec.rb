require_relative 'prime_grid'

describe PrimeGrid do
  before(:all) do
    grid = PrimeGrid.new(gridsize: 10)
  end
  describe "#gridsize" do
    it "should equal 10" do
      expect(grid.gridsize).to eq(10)
    end
  end
end
