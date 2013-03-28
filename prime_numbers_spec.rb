require 'rspec'
require 'prime_numbers.rb'

describe Primefactors do

	before(:each) do
		@primefactors = Primefactors.new
	end

	describe "prime_factors" do
		it "gets prime factors do" do
			@count = 5
			@primefactors.get_primes(@count).should == [2, 3, 5, 7, 11]
		end

		it 'checks if a number is a prime number' do
			@primefactors.is_prime?(1).should == false
			@primefactors.is_prime?(3).should == true
			@primefactors.is_prime?(4).should == false
			@primefactors.is_prime?(5).should == true
		end

		it 'gets the next prime number' do
			@primefactors.next_prime(1).should == 2
			@primefactors.next_prime(3).should == 5
			@primefactors.next_prime(19).should == 23
		end
	end
end

