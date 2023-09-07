class Solver
  def factorial(num)
    num_factorial = 1
    if num.negative?
      "Factorial of negative number can't be calculated"
    else
      (1..num).each { |p| num_factorial *= p }
      num_factorial
    end
  end
end
