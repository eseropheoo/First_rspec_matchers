require 'rspec'

RSpec.describe "basic calc engine works" do 


	it "should add two numbers correctly" do
		calc = Calcengine.new
		expect(calc).to respond_to(:add)
		expect(calc.add(4,5)).to eq(9)
	end

	it "should minus two numbers correctly" do
		calc = Calcengine.new
		expect(calc).to respond_to(:minus)
		expect(calc.minus(9,3)).to eq(6)
	end

end

class Calcengine

	def add n1, n2
		n1 + n2
	end
	
	# def minus n1, n2
	# 	n1- n2
	# end




end


