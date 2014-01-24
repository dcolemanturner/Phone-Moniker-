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
	#consolidating these into one dictionary would be smart
	@@dict_map = {
		'1' => '@@one_word',
		'2' => '@@two_word',
		'3' => '@@three_word',
		'4' => '@@four_word',
		'5' => '@@five_word',
		'6' => '@@six_word',
		'7' => '@@seven_word'
	}
	@@one_word = ['a', 'i']
	@@two_word = ['as', 'yo', 'is', 'to', 'at']
	@@three_word = ['the', 'and', 'why', 'her', 'ass', 'age', 'thy']
	#@@three_word = ['abs', 'ace', 'act', 'add', 'ads', 'age', 'ago', 'aid', 'aim', 'air', 'ale', 'amp', 'all', 'and', 'ant', 'any', 'ape', 'arc', 'are', 'ark', 'arm', 'art', 'ash', 'ask', 'ate', 'awe', 'axe', 'bad', 'bag', 'bam', 'ban', 'bar', 'bat', 'bay', 'bed', 'beg', 'bet', 'bib', 'bid', 'big', 'bin', 'bio', 'bit', 'boa', 'bob', 'bog', 'boo', 'bop', 'bot', 'bow', 'box', 'boy', 'bra', 'bud', 'bug', 'bum', 'bun', 'bus', 'but', 'buy', 'bye', 'cab', 'cam', 'can', 'cap', 'car', 'cat', 'chi', 'cob', 'cog', 'con', 'cop', 'cow', 'coy', 'cry', 'cub', 'cue', 'cup', 'cut', 'dab', 'dad', 'day', 'den', 'dew', 'did', 'dib', 'die', 'dig', 'dim', 'din', 'dip', 'dog', 'don', 'dot', 'dry', 'dub', 'due', 'dug', 'duh', 'duo', 'dye', 'ear', 'eat', 'eel', 'egg', 'ego', 'elf', 'elk', 'elm', 'emo', 'end', 'eon', 'era', 'eve', 'eye', 'fab', 'fad', 'fan', 'far', 'fat', 'fed', 'fee', 'few', 'fav', 'fit', 'fix', 'fly', 'foe', 'fog', 'for', 'fox', 'fry', 'fun', 'fur', 'gag', 'gal', 'gap', 'gas', 'gel', 'gem', 'get', 'gig', 'got', 'gum', 'gun', 'gut', 'guy', 'gym', 'gin', 'had', 'ham', 'hat', 'has', 'her', 'hex', 'hey', 'hid', 'him', 'hip', 'his', 'hit', 'hog', 'hop', 'hot', 'how', 'hub', 'hue', 'hug', 'huh', 'hut', 'ice', 'icy', 'ill', 'imp', 'ink', 'inn', 'ion', 'ire', 'ism', 'its', 'jab', 'jam', 'jar', 'jet', 'jig', 'job', 'joy', 'jug', 'keg', 'key', 'kin', 'lab', 'lad', 'lag', 'lap', 'law', 'lay', 'leg', 'let', 'lid', 'lie', 'lip', 'lot', 'lug', 'mac', 'mad', 'mag', 'man', 'map', 'mat', 'max', 'may', 'men', 'met', 'mic', 'mid', 'mix', 'mob', 'mod', 'mom', 'mon', 'mop', 'mud', 'mug', 'nab', 'nag', 'nap', 'net', 'new', 'not', 'now', 'nut', 'oak', 'oar', 'oat', 'odd', 'ode', 'off', 'oil', 'old', 'ole', 'one', 'ore', 'our', 'out', 'own', 'pac', 'pal', 'pan', 'pat', 'paw', 'pay', 'peg', 'pen', 'per', 'pet', 'pic', 'pig', 'pie', 'pin', 'pip', 'pix', 'pod', 'pog', 'pop', 'pot', 'pow', 'pro', 'pub', 'pup', 'put', 'rad', 'rap', 'rat', 'raw', 'ray', 'red', 'rib', 'rig', 'rim', 'rip', 'rot', 'row', 'rub', 'rug', 'rum', 'rut', 'rye', 'sad', 'sat', 'saw', 'say', 'sea', 'see', 'set', 'sew', 'she', 'shy', 'sim', 'sip', 'sir', 'sit', 'six', 'ski', 'sky', 'sly', 'spy', 'sub', 'sup', 'tad', 'tan', 'tap', 'tea', 'ten', 'the', 'tie', 'til', 'tin', 'tip', 'too', 'top', 'tow', 'toy', 'try', 'tub', 'two', 'vet', 'van', 'wag', 'war', 'was', 'wax', 'way', 'web', 'wet', 'who', 'why', 'win', 'won', 'wow', 'yay', 'yea', 'yep', 'yes', 'yet', 'you', 'yum', 'yup', 'zap', 'zen', 'zip'	]
 	@@four_word = ['next', 'sock', 'lump', 'star', 'nuts']
 	@@five_word = ['stars', 'timer', 'beats', 'socks', 'nutty', 'beaty']
 	@@six_word = ['wishes', 'timers', 'washes', 'greets']
 	@@seven_word = ['hammers', 'wickers', 'generic', 'genetic', 'improve']

<<<<<<< HEAD
	def search(amount, phone_number)
		answers = []

		#Load initial answers dictionary
		case amount
		when 1
			@@one_word.each { |dict|  
				answers += match_first_letter  phone_number[0], dict
=======
	def search(number_to_match, phone_number)
		answers = []

		#Load initial answers dictionary
		case number_to_match
		when 1
			@@one_word.each { |dict|  
				answers += dictionaryFirstWordMatch  phone_number[0], dict
>>>>>>> 3976ee79dd799b7b77bcda1ac5fa24aebfb26cc7
			}
			#search 6 letters
		when 2
			@@two_word.each { |dict|  
<<<<<<< HEAD
				answers += match_first_letter  phone_number[0], dict
=======
				answers += dictionaryFirstWordMatch  phone_number[0], dict
>>>>>>> 3976ee79dd799b7b77bcda1ac5fa24aebfb26cc7
			}

		when 3
			@@three_word.each { |dict|
<<<<<<< HEAD
				answers += match_first_letter  phone_number[0], dict
=======
				answers += dictionaryFirstWordMatch  phone_number[0], dict
>>>>>>> 3976ee79dd799b7b77bcda1ac5fa24aebfb26cc7
			}

		when 4
			@@four_word.each { |dict|
<<<<<<< HEAD
				answers = match_letter phone_number[0], 0, dict
=======
				answers += dictionaryFirstWordMatch  phone_number[0], dict
>>>>>>> 3976ee79dd799b7b77bcda1ac5fa24aebfb26cc7
			}

		when 5
			@@five_word.each { |dict|
<<<<<<< HEAD
				answers += match_first_letter  phone_number[0], dict			
=======
				answers += dictionaryFirstWordMatch  phone_number[0], dict
>>>>>>> 3976ee79dd799b7b77bcda1ac5fa24aebfb26cc7
			}
		
		when 6
			@@six_word.each { |dict|
<<<<<<< HEAD
				answers += match_first_letter  phone_number[0], dict
=======
				answers += dictionaryFirstWordMatch  phone_number[0], dict
>>>>>>> 3976ee79dd799b7b77bcda1ac5fa24aebfb26cc7
			}

		when 7
			@@seven_word.each { |dict|
<<<<<<< HEAD
				answers += match_first_letter  phone_number[0], dict
=======
				answers += dictionaryFirstWordMatch  phone_number[0], dict
>>>>>>> 3976ee79dd799b7b77bcda1ac5fa24aebfb26cc7
			}

		else
			puts "error with switch statement"
		end
<<<<<<< HEAD
			#dictionaryNextMatch answers, phone_number, amount
			#puts answers.to_s
		return answers
	end 

	def match_letter digit, place, word
		answers = []

		@@numbers.fetch(digit).each { |key|
			puts word
			puts key
			puts place
		  if word[place] == key
		  	answers << word
		  	puts "true"
		  else
		  	puts "false"
		  end
		  puts ""
		}
		puts answers.to_s
		return answers
	end
=======
			#dictionary is loaded.  Find next matches
			dictionaryNextMatch answers, phone_number, number_to_match

		return answers
	end 

	def dictionaryFirstWordMatch digit, word
		#input single digit(string), Lookup global number list. Validate first word , output array with valid word
		answers =[]

		@@numbers.fetch(digit).each { |first|  
			if first == word[0]
				answers.push(word)
			end
		}
		return answers
	end

	def dictionaryNextMatch answers, phone_number, numbers_to_match
		#Input array of valid answers,  validate the 2nd -> 7th characters, if no match, remove the answer from the answers arrray
		
		numbers_to_match.downto(2) { |number|
			#first character has been identified already.  Start at 2.  .  Then removing one digit for array safety
			number -= 1

			answers.each { |answer|
				isRemovable = true

				@@numbers.fetch(phone_number[number]).each do |phone_character|
					answer[number] == phone_character ? isRemovable = false : self
				end

				#remove from answers array if not found
				isRemovable == true ? answers.delete(answer) : self
			}
		}
	end

>>>>>>> 3976ee79dd799b7b77bcda1ac5fa24aebfb26cc7

	def match_first_letter digit, word
		answers = []

		@@numbers.fetch(digit).each { |key| 
			if key == word[0]
				answers.push(word)
			end
		}
		return answers
	end

	def match_next_letter digit, place, dict
		#digit is the next number to match ["A", "B", "C"]
		#place is where to match the letter
		#dict is the word to match "hello"

		#this method is called in a "delete_if" loop
		#the word is deleted if this method returns true
		@@numbers.fetch(digit).each{ |key|
			if dict[place] == key
				return false
			else
				return true
			end
		}
	end

end

example = PhoneNumber.new
#example.translatePhoneNum "4326398"
example.search 4,"6398222"
puts "639-8222"
# Examples:
# ---------
#1 letter
# a == 243-6753
# u == 844-1099

#2 letters
# as == 271-9232
# to == 865-1344

#3 letters
# the-next == 843-6398
# new-sock == 639-7625

#4 letters
# the-next == 843-6398
# new-sock == 639-7625
# next == 639-8222
# sock == 762-5222


=begin
	def dictionaryNextMatch answers, phone_number, amount
		#Input array of valid answers,  validate the 2nd -> 7th characters, if no match, remove the answer from the answers arrray
		
		amount.downto(2) { |number|
			#first character has been identified already.  Start at 2.  .  Then removing one digit for array safety
			number -= 1

			answers.each { |answer|
				isRemovable = true

				@@numbers.fetch(phone_number[number]).each do |phone_character|
					answer[number] == phone_character ? isRemovable = false : self
				end

				#remove from answers array if not found
				isRemovable == true ? answers.delete(answer) : self
			}
		}
	end

	def three_letters input
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
			puts dict
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
=end
