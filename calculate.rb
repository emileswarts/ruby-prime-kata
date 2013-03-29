require './prime_numbers.rb'
require 'pp'

if ARGV.empty?
		@prime_count = 10
else
		@prime_count = ARGV.shift.to_i
end

@primes = Primefactors.new.get_primes(@prime_count)
@renderer = Renderer.new
@renderer.render_table(@primes )
