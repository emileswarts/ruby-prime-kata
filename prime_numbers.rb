#!/usr/bin/env ruby

require 'pp'

class Primefactors

		def get_primes(n = 10)
				prime_numbers = []
				prime_index = 0

				while prime_numbers.length < n
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

		def display_table(primes)

				heading = []
				heading << []
				primes.each do |prime|
						heading << prime
				end

				puts heading.join(" | ")
				primes.length.times do |x|
						row = [primes[x]]

						primes.length.times do |y|
								row << primes[x] * primes[y]
						end
				puts row.join(" | ")
				end

		end

		def generate_row(prime_index)

				row = []

				for i in (1..10) do 
						puts prime_index * prime_index
				end
				
				row
		end

	# private 
end

@primes = Primefactors.new
@renderer = Renderer.new
@total_primes = @primes.get_primes(10)

@renderer.display_table(@total_primes)

# pp @total_primes

