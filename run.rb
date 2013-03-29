require File.dirname(__FILE__) + '/prime_numbers.rb'
require File.dirname(__FILE__) + '/renderer.rb'
require 'pp'

@prime_count = 10

if ARGV.any?
		@prime_count = ARGV.shift.to_i
end

@primes = Primefactors.new.get_primes(@prime_count)
@renderer = Renderer.new
@renderer.render_table @primes
