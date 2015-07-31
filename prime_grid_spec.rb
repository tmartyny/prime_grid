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
  describe "#generate_primes_list" do
    it "should generate an array the length of gridsize of prime numbers" do
      expect{grid.generate_primes_list}.to change{grid.prime_list}.from([]).to([2,3,5,7,11,13,17,19,23,29])
    end
  end
  describe "#table" do
    it "should be an object" do
      expect(grid.table).to be_instance_of Table
    end
  end
end
