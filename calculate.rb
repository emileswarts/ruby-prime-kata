require './prime_numbers.rb'
require 'pp'

pp File.dirname(__FILE__)
@prime_count = 10

@primes = Primefactors.new
@renderer = Renderer.new
@renderer.render_table(@primes.get_primes(@prime_count) )
