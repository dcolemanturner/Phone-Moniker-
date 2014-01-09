# Handy array methods
# -------------------
# delete_if
# collect



numbers = {
	'2' => ['a','b','c'], 
	'3' => ['d','e','f'], 
	'4' => ['g','h','i'], 
	'5' => ['j','k','l'], 
	'6' => ['m','n','o'], 
	'7' => ['p','q','r','s'], 
	'8' => ['t','u','v'], 
	'9' => ['w','x','y','z']
}

def translatePhoneNum phone_raw, numbers
	firstThree = []
	lastFour = []

	phone_raw.split("").each_with_index { |i, index|
		if index < 3
			firstThree[index] = numbers.fetch(i)
		else
			lastFour[index-3] = numbers.fetch(i)
		end
	}

	puts find3Word firstThree
	puts find4Word lastFour
end

def find3Word input

	a = input[0]
	b = input[1]
	c = input[2]
	three_word_result = []
	three_word = ['the', 'new', 'for']

	a.each { |first| 
		b.each { |second| 
			c.each { |third| 
				three_word_result += three_word.select { |num| 
					num == first + second + third 
				}
			}
		}
	}
	return three_word_result
end

def find4Word input
	a=input[0]
	b=input[1]
	c=input[2]
	d=input[3]
	four_word_result = []
	four_word = ['next', 'sock']

	a.each { |first| 
		b.each { |second| 
			c.each { |third| 
				d.each { |fourth|
					four_word_result += four_word.select { |num| 
						num == first + second + third + fourth
					}
				}
			}
		}
	}
	return four_word_result
end

translatePhoneNum "8436398", numbers

#puts find3Word eight_num, four_num, three_num

#puts find4Word six_num, three_num, nine_num, eight_num

# Examples:
# ---------
# the-next == 843-6398
# new-sock == 639-7625

