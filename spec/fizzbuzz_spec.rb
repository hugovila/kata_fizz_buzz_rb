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

    it "return all numbers & fizzbuzz numbers from 0 to a given number(16)" do
      first_numbers = 16
      expect(fb.solution_of(first_numbers)).to eq([0, 1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz", 16])
    end
  end
end
