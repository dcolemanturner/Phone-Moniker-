class PhoneNumberController < ApplicationController
  def index
  	#nothing here since we aren't doing anything yet on the index page from the backend.
  end

  def show
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
	#@@three_word = ['the', 'and', 'why', 'her', 'ass', 'age', 'thy']
	@@three_word = ['abs', 'ace', 'act', 'add', 'ads', 'age', 'ago', 'aid', 'aim', 'air', 'ale', 'amp', 'all', 'and', 'ant', 'any', 'ape', 'arc', 'are', 'ark', 'arm', 'art', 'ash', 'ask', 'ate', 'awe', 'axe', 'bad', 'bag', 'bam', 'ban', 'bar', 'bat', 'bay', 'bed', 'beg', 'bet', 'bib', 'bid', 'big', 'bin', 'bio', 'bit', 'boa', 'bob', 'bog', 'boo', 'bop', 'bot', 'bow', 'box', 'boy', 'bra', 'bud', 'bug', 'bum', 'bun', 'bus', 'but', 'buy', 'bye', 'cab', 'cam', 'can', 'cap', 'car', 'cat', 'chi', 'cob', 'cog', 'con', 'cop', 'cow', 'coy', 'cry', 'cub', 'cue', 'cup', 'cut', 'dab', 'dad', 'day', 'den', 'dew', 'did', 'dib', 'die', 'dig', 'dim', 'din', 'dip', 'dog', 'don', 'dot', 'dry', 'dub', 'due', 'dug', 'duh', 'duo', 'dye', 'ear', 'eat', 'eel', 'egg', 'ego', 'elf', 'elk', 'elm', 'emo', 'end', 'eon', 'era', 'eve', 'eye', 'fab', 'fad', 'fan', 'far', 'fat', 'fed', 'fee', 'few', 'fav', 'fit', 'fix', 'fly', 'foe', 'fog', 'for', 'fox', 'fry', 'fun', 'fur', 'gag', 'gal', 'gap', 'gas', 'gel', 'gem', 'get', 'gig', 'got', 'gum', 'gun', 'gut', 'guy', 'gym', 'gin', 'had', 'ham', 'hat', 'has', 'her', 'hex', 'hey', 'hid', 'him', 'hip', 'his', 'hit', 'hog', 'hop', 'hot', 'how', 'hub', 'hue', 'hug', 'huh', 'hut', 'ice', 'icy', 'ill', 'imp', 'ink', 'inn', 'ion', 'ire', 'ism', 'its', 'jab', 'jam', 'jar', 'jet', 'jig', 'job', 'joy', 'jug', 'keg', 'key', 'kin', 'lab', 'lad', 'lag', 'lap', 'law', 'lay', 'leg', 'let', 'lid', 'lie', 'lip', 'lot', 'lug', 'mac', 'mad', 'mag', 'man', 'map', 'mat', 'max', 'may', 'men', 'met', 'mic', 'mid', 'mix', 'mob', 'mod', 'mom', 'mon', 'mop', 'mud', 'mug', 'nab', 'nag', 'nap', 'net', 'new', 'not', 'now', 'nut', 'oak', 'oar', 'oat', 'odd', 'ode', 'off', 'oil', 'old', 'ole', 'one', 'ore', 'our', 'out', 'own', 'pac', 'pal', 'pan', 'pat', 'paw', 'pay', 'peg', 'pen', 'per', 'pet', 'pic', 'pig', 'pie', 'pin', 'pip', 'pix', 'pod', 'pog', 'pop', 'pot', 'pow', 'pro', 'pub', 'pup', 'put', 'rad', 'rap', 'rat', 'raw', 'ray', 'red', 'rib', 'rig', 'rim', 'rip', 'rot', 'row', 'rub', 'rug', 'rum', 'rut', 'rye', 'sad', 'sat', 'saw', 'say', 'sea', 'see', 'set', 'sew', 'she', 'shy', 'sim', 'sip', 'sir', 'sit', 'six', 'ski', 'sky', 'sly', 'spy', 'sub', 'sup', 'tad', 'tan', 'tap', 'tea', 'ten', 'the', 'tie', 'til', 'tin', 'tip', 'too', 'top', 'tow', 'toy', 'try', 'tub', 'two', 'vet', 'van', 'wag', 'war', 'was', 'wax', 'way', 'web', 'wet', 'who', 'why', 'win', 'won', 'wow', 'yay', 'yea', 'yep', 'yes', 'yet', 'you', 'yum', 'yup', 'zap', 'zen', 'zip'	]
 	@@four_word = ['next', 'sock', 'lump', 'star', 'nuts']
 	@@five_word = ['stars', 'timer', 'beats', 'socks', 'nutty', 'beaty']
 	@@six_word = ['wishes', 'timers', 'washes', 'greets']
 	@@seven_word = ['hammers', 'wickers', 'generic', 'genetic', 'improve']

 	#Logic for params and search starts here
 	 if params[:phone_number][:number]
 	 	phone_number = params[:phone_number][:number]

 	 	@first_word = search(3, phone_number[0..2])
 	 	@second_word = search(4, phone_number[3..6])
 	 	#@first_word = search(3, '843')
 	 	#@second_word = search(4, '6398')
 	 end

  end

	def search(amount, phone_number)
		answers = []
		
		#Load initial answers dictionary
		case amount
		when 1
			answers = match_letters phone_number, @@one_word, 0

		when 2
			answers = match_letters phone_number, @@two_word, 0
			answers = match_letters phone_number, answers, 1

		when 3
			answers = match_letters phone_number, @@three_word, 0
			answers = match_letters phone_number, answers, 1
			answers = match_letters phone_number, answers, 2

		when 4
			answers = match_letters phone_number, @@four_word, 0
			answers = match_letters phone_number, answers, 1
			answers = match_letters phone_number, answers, 2
			answers = match_letters phone_number, answers, 3

		when 5
			answers = match_letters phone_number, @@five_word, 0
			answers = match_letters phone_number, answers, 1
			answers = match_letters phone_number, answers, 2
			answers = match_letters phone_number, answers, 3
			answers = match_letters phone_number, answers, 4
		
		when 6
			answers = match_letters phone_number, @@six_word, 0
			answers = match_letters phone_number, answers, 1
			answers = match_letters phone_number, answers, 2
			answers = match_letters phone_number, answers, 3
			answers = match_letters phone_number, answers, 4
			answers = match_letters phone_number, answers, 5

		when 7
			answers = match_letters phone_number, @@seven_word, 0
			answers = match_letters phone_number, answers, 1
			answers = match_letters phone_number, answers, 2
			answers = match_letters phone_number, answers, 3
			answers = match_letters phone_number, answers, 4
			answers = match_letters phone_number, answers, 5
			answers = match_letters phone_number, answers, 6

		else
			puts "error with switch statement"
		end
			#dictionaryNextMatch answers, phone_number, amount
			#puts answers.to_s
		return answers
	end 

	def match_letters phonenumber, dictionary, place
		answers = []
		number = phonenumber[place]

		dictionary.each{ |dict|
		 	puts "searching for " + dict
		 	@@numbers.fetch(number).each { |key|
		 	 puts key 
		 	 	if key == dict[place]
		 	 		answers.push(dict)
		 	 	end
		 	}
		}
		puts answers.to_s
		return answers
	end
end

