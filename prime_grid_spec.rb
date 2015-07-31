require_relative 'prime_grid'

describe PrimeGrid do
  let(:grid) { PrimeGrid.new(gridsize: 10) }
  describe "#gridsize" do
    it "should equal 10" do
      expect(grid.gridsize).to eq(10)
    end
  end
  describe "#is_prime?" do
    it "should return false if the number is not prime" do
      expect(grid.is_prime?(4)).to be false
    end
  end
end
