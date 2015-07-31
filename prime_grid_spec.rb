require_relative 'prime_grid'

describe PrimeGrid do
  let(:grid) { PrimeGrid.new(gridsize: 10) }
  describe "#gridsize" do
    it "should equal 10" do
      expect(grid.gridsize).to eq(10)
    end
  end
  describe "#is_prime" do
    it "should return true if the number is prime" do
      expect(is_prime?(2).to be true)
    end
  end
end
