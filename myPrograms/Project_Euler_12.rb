divisor_num = []
divisor_count = 0
nth = 1
result = 0

while divisor_count < 30
	divisor_num = []
	result += nth
	#print "result: #{result}    "
	(1..result).each do |x|
		if result % x == 0
			divisor_num << x
			#print "#{x} "

		end
	end
	divisor_count = divisor_num.count
	nth += 1
	#print "\n"
end

puts result