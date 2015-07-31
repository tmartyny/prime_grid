require_relative 'prime_grid'

describe PrimeGrid do
  let(:grid) { PrimeGrid.new(gridsize: 10) }
  describe "#gridsize" do
    it "should equal 10" do
      expect(grid.gridsize).to eq(10)
    end
  end
end
