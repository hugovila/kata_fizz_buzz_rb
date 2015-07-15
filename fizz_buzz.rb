# fizz_buzz.rb
#require 'pry'

class Fizz_buzz

  FIZZ = 3
  BUZZ = 5
  FIZZBUZZ = 15

  def tell_me(number)
    return call(:zero, number)
  end

  def call(function, number)
    if function
      send(function, number)
    else
      return number
    end
  end

  def zero(number)
    next_function = :fizzbuzz

    if number == 0
      return 0
    else
      call(next_function, number)
    end
  end

  def fizzbuzz(number)
    next_function = :fizz

    if number % FIZZBUZZ == 0
      return 'fizzbuzz'
    else
      call(next_function, number)
    end
  end

  def fizz(number)
    next_function = :buzz

    if number % FIZZ == 0
      return 'fizz'
    else
      call(next_function, number)
    end
  end

  def buzz(number)
    next_function = nil

    if number % BUZZ == 0
      return 'buzz'
    else
      call(next_function, number)
    end
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
