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

	def generate_row(primes)
			row = []
			primes.each do |prime|
					row << prime
			end

			row
	end

	# private 
end

num_primes = ARGV.first.to_i

row = []
@primes = Primefactors.new
@renderer = Renderer.new
@total_primes = @primes.get_primes(num_primes)

 pp @total_primes.length

@total_primes.length do |prime|
		row[prime] = @primes.get_primes(prime)
end

 pp row
