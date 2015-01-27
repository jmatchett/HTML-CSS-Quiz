# Create a script to practice HTML and CSS skills
# example what is the tag name for an image tag, responds
# examplewhat is the CSS attribute to change the background color, responds
# looking at this html and css which of these will be rendered (multiple choice)
# at least 10 different questions
# extra points for randomization
# extra points for scoring

questions = [
	[
		"Which of the following examples shows correctly nested HTML elements?",
		choices = {
	    "<html></html><head></head><body></body>" => "correct",
	    "<html><head><head><body><body><html>" => "incorrect",
	    "<html><head><body></html></head></body>" => "incorrect",
	    "<html><head></head><body></body></html>" => "incorrect",
	  }
	],
  [
  	"What is the correct format for inserting an image?",
  	choices = {
	    "<img href='photo.jpg'>" => "incorrect",
	    "<img src='photo.jpg'>" => "correct",
	    "<image src='photo.jpg'>" => "incorrect",
	    "<img>photo.jpg</img>" => "incorrect",
	    }
	 ],
	[
  	"What does HTML stand for?",
  	choices = {
	    "Hyperlinks, Text, Markups and Linguistics" => "incorrect",
	    "HyperText Mixup Language" => "incorrect",
	    "HyperText Markup Language" => "correct",
	    "HyperTools Markup Language" => "incorrect",
	    }
	 ],
	[
  	"<h1> and <h3> are examples of what?",
  	choices = {
	    "inline elements" => "incorrect",
	    "paragraphs" => "incorrect",
	    "horizontal rules" => "incorrect",
	    "headings" => "correct",
	    }
	],
	[
		"What is the proper format of an HTML comment?",
		choices = {
	    "/* This Is An HTML Comment */" => "incorrect",
	    "// This Is An HTML Comment" => "incorrect",
	    "<! This Is An HTML Comment !>" => "incorrect",
	    "<!-- This Is An HTML Comment -->" => "correct",
	  }
	],
  [
  	"What are HTML attributes?",
  	choices = {
	    "search engine spiders that read HTML code" => "incorrect",
	    "characteristics of an element that provide additional information" => "correct",
	    "elements that give credit to other elements" => "incorrect",
	    }
	 ],
	[
  	"What does CSS stand for?",
  	choices = {
	    "Cascading Style Syntax" => "incorrect",
	    "Common Style Syntax" => "incorrect",
	    "Cascading Style Sheets" => "correct",
	    "Common Style Sheets" => "incorrect",
	    }
	 ],
	[
  	"'a:hover' and 'a:active' are both examples of what?",
  	choices = {
	    "attribute selectors" => "incorrect",
	    "selectors" => "incorrect",
	    "ids" => "incorrect",
	    "pseudo-classes" => "correct",
	    }
	],
	[
		"Internal CSS Is:",
		choices = {
	    "Added Directly to An HTML Tag" => "correct",
	    "Maintained In A Separate File" => "incorrect",
	    "Added to An HTML Document's Header" => "incorrect",
	  }
	],
  [
  	"What is the difference between margins and padding?",
  	choices = {
	    "margins add whitespace inside the border and padding adds whitespace outside" => "incorrect",
	    "padding adds whitespace inside the border and margins add whitespace outside" => "correct",
	    "padding adds whitespace and margins increase the border size" => "incorrect",
	    "there is no difference" => "incorrect",
	    }
	 ],
	[
  	"Which of the following statements is NOT correct?",
  	choices = {
	    "classes are identified a number sign (#)" => "correct",
	    "classes are identified with a dot (.)" => "incorrect",
	    "classes and ids are not used in inline CSS" => "incorrect",
	    "ids are identified with a number sign (#)" => "incorrect",
	    }
	 ],
	[
  	"Which of the following is not a valid color code?",
  	choices = {
	    "#505050" => "incorrect",
	    "grey" => "incorrect",
	    "rgb(80, 80, 80)" => "incorrect",
	    "808080" => "correct",
	    "#FFF" => "incorrect"
	    }
	],
]

total_questions = questions.count - 1
question_order = (0..(total_questions)).to_a.shuffle
# DEBUG PUTS
# puts question_order
system "clear" or system "cls"
puts "The Basics of HTML and CSS Quiz"
puts "You will be asked a series of questions, each of which is multiple choice."
puts "Please input the corresponding number for your answer."
puts "When ready please say 'begin'"
start_prompt = gets.chomp
take_again = "yes"
while take_again != "no"
	score = 0
	if start_prompt == "begin"
		question_order[0..9].each do |question_number|
			puts questions[question_number][0]
			i = 0
			total_choices = questions[question_number][1].length - 1
			choice_order = (0..(total_choices)).to_a.shuffle
			choice_key = {}
			choice_order[0..total_choices].each do |choice|
				i += 1
				choice_key[i] = choice
				# DEBUG PUTS
				# puts choice_key
				# puts choice
				puts i.to_s + ". " + questions[question_number][1].keys[choice]
			end
			answer = gets.chomp.to_i
			# DEBUG PUTS
			# puts answer
			answer_to_key = choice_key[answer]
			# DEBUG PUTS
			# puts answer_to_key
			if questions[question_number][1].values[answer_to_key] == "correct"
				puts "CORRECT"
				score += 1
			elsif questions[question_number][1].values[answer_to_key] == "incorrect"
				puts "INCORRECT"
				puts "The correct answer was"
				puts questions[question_number][1].invert["correct"]
			else
				puts "YOU DONE FUCKED UP"
			end
		end
		puts "You scored " + score.to_s + " out of 10"
		if score == 10
			grade = "A"
		elsif score == 9
			grade = "A"
		elsif score == 8
			grade = "B"
		elsif score == 7
			grade = "C"
		elsif score == 6
			grade = "D"
		elsif score < 6
			grade = "F"
		end
		puts "Your final grade is an #{grade}"
		puts "Would you like to take the test again?"
		take_again = nil
		take_again = gets.chomp.downcase
		system "clear" or system "cls"
	else
	end
end