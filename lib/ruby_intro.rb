# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	# YOUR CODE HERE
	total=0
	arr.each{|value| total += value}
	return total
end

def max_2_sum arr
	# YOUR CODE HERE
	total=0
	if arr.length < 2
		arr.each {|i| total+=i}
	else
		newarray = arr.sort {|x,y| y<=>x}
		total+=newarray[0]+newarray[1]
	end
	return total
end

def sum_to_n? arr, n
	# YOUR CODE HERE
	for icounter in 0 ... arr.size-1
		for jcounter in icounter+1 ... arr.size
			if arr[icounter] + arr[jcounter] == n
			return true
			end
		end
	end
	return false
end

# Part 2

def hello(name)
	# YOUR CODE HERE
	return "Hello, "+name
end

def starts_with_consonant? s
	# YOUR CODE HERE
	if ['A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u'].include? s[0] or ( not ('a'..'z') === s[0] and not ('A'..'Z') === s[0])
		return false
	else
		return true
	end
end

def binary_multiple_of_4? s
	# YOUR CODE HERE
	reversestring = s.reverse
	k=0
	value=0
	for index in 0...reversestring.size
		if not ['0','1'].include? reversestring[index]
			return false
		else
			value = value+reversestring[index].to_i * 2**k
			k+=1
		end
	end
	if value % 4 == 0 and k>0
		return true
	else
		return false
	end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize (isbnVal, priceVal)
		if isbnVal == '' or priceVal <=0
			raise ArgumentError.new("ISBN should be a non empty string")
		end
		@isbn = isbnVal
		@price = priceVal
	end

	def isbn
		return @isbn
	end

	def price
		return @price
	end

	def isbn= (isbnVal)
		@isbn = isbnVal
	end

	def price= (price)
		@price = price
	end

	def price_as_string
		priceString = '$'+@price.to_s
		decimalPointLoc = priceString.index('.')
		if decimalPointLoc == nil
			priceString[priceString.size] = '.'
			decimalPointLoc = priceString.size - 1
		end
		for i in (1...3)
			if priceString[decimalPointLoc+i] == nil
				priceString[decimalPointLoc+i] = '0'
			end
		end
		return priceString
	end
end
