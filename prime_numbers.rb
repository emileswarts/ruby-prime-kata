class Primefactors
	def get_primes(n)
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
	def render_table(primes)
		headings = []
		headings << "  "

		#create first blank cell
		primes.each do |prime|
			headings << pad_cell(prime)
		end

		puts headings.join(" | ") + " |"

		primes.length.times do |x|
			row = [[pad_cell(primes[x])]]

			primes.length.times do |y|
				row << (pad_cell(primes[x] * primes[y]))
			end

			puts row.join(" | ")
		end
	end

	private
	def pad_cell(content_array)
			content_array.to_s.center(5, ' ')
	end
end
