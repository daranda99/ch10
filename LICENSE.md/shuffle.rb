def shuffle(array)
	rec_shuffle(array, [])
end

def rec_shuffle(initial_array, shuffled_array)
	rand_index = rand(initial_array.length)
	element = initial_array[rand_index]
	shuffled_array << element
	initial_array.delete_at(rand_index)
	if initial_array.length > 0
		rec_shuffle(initial_array, shuffled_array) 
	else
		shuffled_array
	end
end

puts shuffle(["cat", "dog", "deer", "vehicle"])
