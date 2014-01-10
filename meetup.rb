class PhoneNumber

	#class variables are available in the class only
	@@numbers = {
		'2' => ['a','b','c'], 
		'3' => ['d','e','f'], 
		'4' => ['g','h','i'], 
		'5' => ['j','k','l'], 
		'6' => ['m','n','o'], 
		'7' => ['p','q','r','s'], 
		'8' => ['t','u','v'], 
		'9' => ['w','x','y','z']
	}
	@@four_word = ['next', 'sock']
	@@three_word = ['the', 'new', 'for']

	def translatePhoneNum (phone_raw)
		firstThree = []
		lastFour = []

		phone_raw.split("").each_with_index { |i, index|
			if index < 3
				firstThree[index] = @@numbers.fetch(i)
			else
				lastFour[index-3] = @@numbers.fetch(i)
			end
		}

		puts find3Word firstThree
		#puts find4Word lastFour
	end

	def find3Word input
		answers = []
		#start by looping through the whole dictionary
		@@three_word.each { |dict|
			#test the first letter
			input[0].each { |first|
				if first == dict[0]
					answers.push(dict)
				end
			}
		}

		answers.each { |dict|
			#delete instead of add
			input[1].select! { |second|
				second == dict[1]
			}
		}

		answers.each { |dict|
			input[2].select! { |third|
				third == dict[2]
			}
		}

		if answers.length == 0
				puts "Sorry no answers match!"
		else 
			return answers
		end
	end

	def find4Word input
		d=input[0]
		e=input[1]
		f=input[2]
		g=input[3]
		four_word_result = []
		d.each { |first| 
			e.each { |second| 
				f.each { |third| 
					g.each { |fourth|
						four_word_result += @@four_word.select { |num| 
							num == first + second + third + fourth
						}
					}
				}
			}
		}
		return four_word_result
	end
	
end

example = PhoneNumber.new
example.translatePhoneNum "8436398"
# Examples:
# ---------
# the-next == 843-6398
# new-sock == 639-7625

