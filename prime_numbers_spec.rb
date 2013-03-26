require 'rspec'
require '~/bin/prime_numbers.rb'

describe Primefactors do

		before(:each) do
				@renderer = Renderer.new
				@primefactors = Primefactors.new
		end

		describe "prime_factors" do
				it "should find prime facrors for 1" do
						@primefactors.prime_factors(1).should == []
				end
				it "should find prime facrors for 2" do
						@primefactors.prime_factors(2).should == [ 2 ]
				end
				it "should find prime facrors for 3" do
						@primefactors.prime_factors(3).should == [ 3 ]
				end
				it "should find prime facrors for 4" do
						@primefactors.prime_factors(4).should == [2,2]
				end
				it "should find prime facrors for 5" do
						@primefactors.prime_factors(5).should == [5]
				end
				it "should find prime facrors for 6" do
						@primefactors.prime_factors(6).should == [2,3]
				end
				it "should find prime facrors for 7" do
						@primefactors.prime_factors(7).should == [7]
				end
				it "should find prime facrors for 8" do
						@primefactors.prime_factors(8).should == [2,2,2]
				end
				it "should find prime facrors for 9" do
						@primefactors.prime_factors(9).should == [3,3]
				end

				it "prints factors to screen" do
						total_factors = []

						i = 0
						while(i < 10)
								total_factors << @primefactors.prime_factors(i)
								i += 1
						end

						@renderer.print_head
						@renderer.print_factors(total_factors)

				end
		end
end

#    2  3  4  5  6  7  8  9  10
# 2  4  6  8  10 12 14 16 18 20
# 3  6  9  12 15 18 21 24 27 30
# 4  8  12 16 20 24 
# 5
# 6
# 7
# 8
# 9
# 10
