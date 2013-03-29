class Renderer
	def render_table(primes)
		headings = []
		
		#create first blank cell
		headings << "     "

		primes.each do |p|
			headings << pad_cell(p)
		end

		puts headings.join(" | ") + " |"

		primes.length.times do |x|
			cells = [[pad_cell(primes[x])]]

			primes.length.times do |y|
				cells << (pad_cell(primes[x] * primes[y]))
			end

			puts cells.join(" | ") + " |"
		end
	end

	private

	def pad_cell(cell_content)
			cell_content.to_s.center(5, ' ')
	end
end
