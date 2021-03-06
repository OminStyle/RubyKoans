def rectangles(n, w, h)
	if h > 100000 || w > 100000 || n > 400000000
		return "Error: Exceeds Data Constraints"
	else
		l = w if w >= h
		l = h if h > w
		
		count = 0
		while count <= n do
			count = 0
			nw = (l / w).floor
			nh = (l / h).floor
			count += nw * nh

			lw = l
			lh = l - nh * h
			if lh >= 0
				nw = (lw / h).floor
				nh = (lh / w).floor
				count += nw * nh
			end
			#puts "l: #{l}  count: #{count}  lw: #{lw}  lh: #{lh}  nw: #{nw}  nh: #{nh}"
			l += 1
		end
		l -= 1
	end
end

puts rectangles(8, 1, 3)
puts rectangles(400000000, 2, 3)