require 'rspec'
RSpec.describe "fizzbuzz prints the correct answer - " do
    it "fizzbuzz should exist" do
        fb = Fizzbuzz.new
        expect(fb).to respond_to(:run)
    end
    it "should return a fizz if divisible by 3" do
        fb = Fizzbuzz.new
        expect(fb.three? 3).to eql(true)
    end
    it "three? should return nil if not divisible by 3" do 
        fb = Fizzbuzz.new
        expect(fb.three? 5).to eql(false)
    end
    it "should return a buzz if divisible by 5" do
        fb = Fizzbuzz.new
        expect(fb.five? 5).to eql(true)
    end
    it "five? should return nil if not divisible by 5" do 
        fb = Fizzbuzz.new
        expect(fb.five? 6).to eql(false)
    end
    it "should return a fizz if divisible by 15" do
        fb = Fizzbuzz.new
        expect(fb.fifteen? 15).to eql(true)
    end
    it "three? should return nil if not divisible by 15" do 
        fb = Fizzbuzz.new
        expect(fb.fifteen? 65).to eql(false)
    end
    it "should return the number if divisible by none" do
        fb = Fizzbuzz.new
        expect(fb.none? 4).to eql(4)
    end
    it "should return correct fizzbuzz response" do 
        fb = Fizzbuzz.new
        expect(fb.run 5).to eql([1, 2, "Fizz", 4, "Buzz"])
    end
    it "should return correct fizzbuzz response" do 
        fb = Fizzbuzz.new
        expect{fb.print 5}.to output("1\n2\nFizz\n4\nBuzz\n").to_stdout
    end 
    it "should return an error on -1" do
        fb = Fizzbuzz.new
        expect{fb.print -1}.to raise_error
    end
end
class Fizzbuzz
    def print iterations
        run(iterations).each do |var|
            puts var
        end
    end
    def run iterations
        if iterations < 0
            raise Error
        end
        to_return = []
        (1..iterations).each do |x| 
            if fifteen? x
                to_return << "FizzBuzz"
            elsif three? x
                to_return << "Fizz"
            elsif five? x
                to_return << "Buzz"
            else
                to_return << x
            end
        end
        to_return
    end
    def three? num
        num % 3 == 0
    end
    def five? num
        num % 5 == 0
    end
    def fifteen? num
        num % 15 == 0
    end
    def none? num
        if num % 3 != 0 and num % 5 != 0
            num
        end
    end
end
