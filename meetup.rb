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
	@@one_word = []
	@@two_word = []
	@@three_word = ['the', 'and', 'why', 'her', 'hfa', 'hld']
	#@@three_word = ['abs', 'ace', 'act', 'add', 'ads', 'age', 'ago', 'aid', 'aim', 'air', 'ale', 'amp', 'all', 'and', 'ant', 'any', 'ape', 'arc', 'are', 'ark', 'arm', 'art', 'ash', 'ask', 'ate', 'awe', 'axe', 'bad', 'bag', 'bam', 'ban', 'bar', 'bat', 'bay', 'bed', 'beg', 'bet', 'bib', 'bid', 'big', 'bin', 'bio', 'bit', 'boa', 'bob', 'bog', 'boo', 'bop', 'bot', 'bow', 'box', 'boy', 'bra', 'bud', 'bug', 'bum', 'bun', 'bus', 'but', 'buy', 'bye', 'cab', 'cam', 'can', 'cap', 'car', 'cat', 'chi', 'cob', 'cog', 'con', 'cop', 'cow', 'coy', 'cry', 'cub', 'cue', 'cup', 'cut', 'dab', 'dad', 'day', 'den', 'dew', 'did', 'dib', 'die', 'dig', 'dim', 'din', 'dip', 'dog', 'don', 'dot', 'dry', 'dub', 'due', 'dug', 'duh', 'duo', 'dye', 'ear', 'eat', 'eel', 'egg', 'ego', 'elf', 'elk', 'elm', 'emo', 'end', 'eon', 'era', 'eve', 'eye', 'fab', 'fad', 'fan', 'far', 'fat', 'fed', 'fee', 'few', 'fav', 'fit', 'fix', 'fly', 'foe', 'fog', 'for', 'fox', 'fry', 'fun', 'fur', 'gag', 'gal', 'gap', 'gas', 'gel', 'gem', 'get', 'gig', 'got', 'gum', 'gun', 'gut', 'guy', 'gym', 'gin', 'had', 'ham', 'hat', 'has', 'her', 'hex', 'hey', 'hid', 'him', 'hip', 'his', 'hit', 'hog', 'hop', 'hot', 'how', 'hub', 'hue', 'hug', 'huh', 'hut', 'ice', 'icy', 'ill', 'imp', 'ink', 'inn', 'ion', 'ire', 'ism', 'its', 'jab', 'jam', 'jar', 'jet', 'jig', 'job', 'joy', 'jug', 'keg', 'key', 'kin', 'lab', 'lad', 'lag', 'lap', 'law', 'lay', 'leg', 'let', 'lid', 'lie', 'lip', 'lot', 'lug', 'mac', 'mad', 'mag', 'man', 'map', 'mat', 'max', 'may', 'men', 'met', 'mic', 'mid', 'mix', 'mob', 'mod', 'mom', 'mon', 'mop', 'mud', 'mug', 'nab', 'nag', 'nap', 'net', 'new', 'not', 'now', 'nut', 'oak', 'oar', 'oat', 'odd', 'ode', 'off', 'oil', 'old', 'ole', 'one', 'ore', 'our', 'out', 'own', 'pac', 'pal', 'pan', 'pat', 'paw', 'pay', 'peg', 'pen', 'per', 'pet', 'pic', 'pig', 'pie', 'pin', 'pip', 'pix', 'pod', 'pog', 'pop', 'pot', 'pow', 'pro', 'pub', 'pup', 'put', 'rad', 'rap', 'rat', 'raw', 'ray', 'red', 'rib', 'rig', 'rim', 'rip', 'rot', 'row', 'rub', 'rug', 'rum', 'rut', 'rye', 'sad', 'sat', 'saw', 'say', 'sea', 'see', 'set', 'sew', 'she', 'shy', 'sim', 'sip', 'sir', 'sit', 'six', 'ski', 'sky', 'sly', 'spy', 'sub', 'sup', 'tad', 'tan', 'tap', 'tea', 'ten', 'the', 'tie', 'til', 'tin', 'tip', 'too', 'top', 'tow', 'toy', 'try', 'tub', 'two', 'vet', 'van', 'wag', 'war', 'was', 'wax', 'way', 'web', 'wet', 'who', 'why', 'win', 'won', 'wow', 'yay', 'yea', 'yep', 'yes', 'yet', 'you', 'yum', 'yup', 'zap', 'zen', 'zip'	]
 	@@four_word = ['next', 'sock']
 	@@five_word = []
 	@@six_word = []
 	@@seven_word = []

	def search(number, input)
		answers = []

		#puts input
		case number
		when 1
			@@one_word.each { |dict|  
				@@numbers.fetch(input[0]).each { |first|  
					if first == dict[0]
						answers.push(dict)
					end
				}
			}
		when 2
			@@two_word.each { |dict|  
				@@numbers.fetch(input[0]).each { |first|  
					if first == dict[0]
						answers.push(dict)
					end
				}
			}
			answers.each { |dict|
			 	@@numbers.fetch(input[1]).select! { |second|
			 		second == dict[1]
			 	}
			}
		when 3
			#loop input: ['the', 'and', 'why', 'her', 'hfa', 'hld']
			@@three_word.each { |dict|
				#loop input ['g','h','i']
				@@numbers.fetch(input[0]).each { |first|  
					if first == dict[0]
						answers.push(dict)
					end
				}
			}
			#loop output: ["her", "hfa", "hld"]

			#loop input: ["her", "hfa", "hld"]
			answers.select! { |dict|
				#loop input: ['d','e','f']
				@@numbers.fetch(input[1]).each { |second|
				 	second == dict[1]
				}
			}
			#loop output: ["her", "hfa", "hld"]
			
			answers.each { |dict|
			 	@@numbers.fetch(input[2]).select! { |third|
			 		third == dict[2]
			 	}
			}
			
		else
			puts "error with switch statement"
		end
		return answers
	end 


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

		puts three_letters firstThree
		#puts find4Word lastFour
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

example = PhoneNumber.new
#example.translatePhoneNum "4326398"
example.search 3,"4326398"
# Examples:
# ---------
# the-next == 843-6398
# new-sock == 639-7625

