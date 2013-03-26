#!/usr/bin/env ruby

require 'pp'

class Primefactors

		def get_primes(n = 10)
				prime_numbers = []
				prime_index = 0

				while prime_numbers.length <= n
						prime_index = next_prime(prime_index)
						prime_numbers << prime_index
				end

				prime_numbers
		end

		def is_prime?(n)
				return false if n <= 1 

				(2..Math.sqrt(n)).each do |x|
						return false if n % x == 0
				end

				return true
		end

		def next_prime(n)
				prime_number = n + 1

				until is_prime? prime_number do
						prime_number += 1
				end

				prime_number
		end
end

class Renderer

		@separator = "|"

	def print_table(primes)
			print_head(primes)
	end

	# private 
	def print_head(primes)
			primes.each do |x|
					puts x + @separator
			end
	end

	def print_side
		(2..10).each { |n| 
			puts " #{n} "
		}
	end

	def print_factors(factors_array)
		factors_array.each do |factor|
			pp factor
		end

	end
end

num_primes = ARGV.first.to_i

@primes = Primefactors.new
@renderer = Renderer.new
@total_primes = @primes.get_primes(num_primes)
@renderer.print_table(@total_primes)
