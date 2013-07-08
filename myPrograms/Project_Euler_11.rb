def map_numbers(file_name)
File.open(file_name) do |file|
    array = file.map { |line| line.split.map(&:to_i) }
    puts find_greatest_product(array)
  end
end

def find_greatest_product(array)
	posX = 0
	posY = 0
	product = 0

	#while array[posX][posY] != nil
	while posY <= 19

		#Product of four adjacent horizontal (right) numbers
		#if array[posX+3][posY] != nil
		if posX + 3 <= 19
			temp_product = array[posX][posY] * array[posX+1][posY] *
										 array[posX+2][posY] * array[posX+3][posY]
			if product < temp_product
				product = temp_product
			end
		end

		#Product of four adjacent vertical numbers (down)
		#if array[posX][posY+3] != nil
		if posY + 3 <= 19 
			temp_product = array[posX][posY] * array[posX][posY+1] *
								     array[posX][posY+2] * array[posX][posY+3]
			if product < temp_product
				product = temp_product
			end
		end

		#Product of four adjacent diagonal numbers (down-right)
		#if array[posX+3][posY+3] != nil
		if posX + 3 <= 19 && posY + 3 <= 19
			temp_product = array[posX][posY] * array[posX+1][posY+1] *
										 array[posX+2][posY+2] * array[posX+3][posY+3]
			if product < temp_product
				product = temp_product
			end
		end

		#Product of four adjacent diagonal numbers (down-left)
		#if array[posX-3][posY+3] != nil
		if posX - 3 >= 0 && posY + 3 <= 19
			temp_product = array[posX][posY] * array[posX-1][posY+1] *
										 array[posX-2][posY+2] * array[posX-3][posY+3]
			if product < temp_product
				product = temp_product
			end
		end

		#Increment position
		posX += 1
		if posX >= 20
			posY += 1
			posX = 0
		end
	end
	return product
end

map_numbers("Project_Euler_11.txt")