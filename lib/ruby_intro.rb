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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
