require_relative '../solver'

describe Solver do
  before(:each) do
    @solve = Solver.new
  end

  context '#factorial' do
    it 'checks if this is an instance of the Solver class' do
      expect(@solve).to be_instance_of Solver
    end

    it 'checks if the factorial method exists' do
      expect(@solve).to respond_to :factorial
    end

    it 'checks if factorial method behaves correctly' do
      five_factorial = @solve.factorial(5)
      expect(five_factorial).to be 120
    end

    it 'checks factorial of zero be 1' do
      zero_factorial = @solve.factorial(0)
      expect(zero_factorial).to be 1
    end

    it 'checks if number is negative give exception' do
      negative_num = @solve.factorial(-5)
      expect(negative_num).to eql "Factorial of negative number can't be calculated"
    end
  end

  
end
