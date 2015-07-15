# fizz_buzz.rb
#require 'pry'

class Fizz_buzz

  FIZZ = 3
  BUZZ = 5
  FIZZBUZZ = 15

  def tell_me(number)
    result = number
    result = 'fizz' if number % FIZZ == 0
    result = 'buzz' if number % BUZZ == 0
    result = 'fizzbuzz' if number % FIZZBUZZ == 0
    result = 0 if number == 0
    return result
  end

  def solution_of(first_numbers)
    first = []
    (0..first_numbers).each do |x|
      first.push self.tell_me(x)
    end
    return first
  end

end
#binding.pry
