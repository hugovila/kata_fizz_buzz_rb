#fizz_buzz_spec.rb

require './fizz_buzz.rb'

RSpec.describe Fizz_buzz do
  context "#tell_me" do
    let(:fb) {Fizz_buzz.new}

    it "return own number(0) if no fizzbuzz number" do
      number = 0
      expect(fb.tell_me(number)).to eq(number)
    end

    it "return own number(1) if no fizzbuzz number" do
      number = 1
      expect(fb.tell_me(number)).to eq(number)
    end

    it "return fizz for number(3)" do
      number = 3
      expect(fb.tell_me(number)).to eq('fizz')
    end

    it "return buzz for number(5)" do
      number = 5
      expect(fb.tell_me(number)).to eq('buzz')
    end

    it "return fizz for number(6)" do
      number = 6
      expect(fb.tell_me(number)).to eq('fizz')
    end

    it "return own number(7) if no fizzbuzz number" do
      number = 7
      expect(fb.tell_me(number)).to eq(number)
    end

    it "return fizz for number(9)" do
      number = 9
      expect(fb.tell_me(number)).to eq('fizz')
    end

    it "return buzz for number(10)" do
      number = 10
      expect(fb.tell_me(number)).to eq('buzz')
    end

    it "return own number(11) if no fizzbuzz number" do
      number = 11
      expect(fb.tell_me(number)).to eq(number)
    end

    it "return fizzbuzz for number(15)" do
      number = 15
      expect(fb.tell_me(number)).to eq('fizzbuzz')
    end
  end

  context "#solution_of" do
    let(:fb) {Fizz_buzz.new}

    it "return all numbers & fizzbuzz numbers from 0 to a given number()" do
      first_numbers = 16
      first_one_hundred = 100
      result = [0, 1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz", 16]
      result_first_one_hundred = [0,
                     1,
                     2,
                     "fizz",
                     4,
                     "buzz",
                     "fizz",
                     7,
                     8,
                     "fizz",
                     "buzz",
                     11,
                     "fizz",
                     13,
                     14,
                     "fizzbuzz",
                     16,
                     17,
                     "fizz",
                     19,
                     "buzz",
                     "fizz",
                     22,
                     23,
                     "fizz",
                     "buzz",
                     26,
                     "fizz",
                     28,
                     29,
                     "fizzbuzz",
                     31,
                     32,
                     "fizz",
                     34,
                     "buzz",
                     "fizz",
                     37,
                     38,
                     "fizz",
                     "buzz",
                     41,
                     "fizz",
                     43,
                     44,
                     "fizzbuzz",
                     46,
                     47,
                     "fizz",
                     49,
                     "buzz",
                     "fizz",
                     52,
                     53,
                     "fizz",
                     "buzz",
                     56,
                     "fizz",
                     58,
                     59,
                     "fizzbuzz",
                     61,
                     62,
                     "fizz",
                     64,
                     "buzz",
                     "fizz",
                     67,
                     68,
                     "fizz",
                     "buzz",
                     71,
                     "fizz",
                     73,
                     74,
                     "fizzbuzz",
                     76,
                     77,
                     "fizz",
                     79,
                     "buzz",
                     "fizz",
                     82,
                     83,
                     "fizz",
                     "buzz",
                     86,
                     "fizz",
                     88,
                     89,
                     "fizzbuzz",
                     91,
                     92,
                     "fizz",
                     94,
                     "buzz",
                     "fizz",
                     97,
                     98,
                     "fizz",
                     "buzz"]
      expect(fb.solution_of(first_one_hundred)).to eq(result_first_one_hundred)
    end
  end
end
