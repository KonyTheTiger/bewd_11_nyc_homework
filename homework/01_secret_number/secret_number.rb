###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################
def get_input
	return gets.chomp
end

numb = (1..10).to_a.sample
try = 3

puts "Welcome to The Game! Beware many of tried to beat Peter the Creators Game!"
puts "What is the challenger's name?"
name = get_input
puts "Brave #{name}, you have come to play my Game."
puts "You have #{try} tries to guess my number. It is between 1 and 10."
puts "Many have tried. Few succeed."
puts "May the odds be in your favor."
puts "What is your first guess?"
guess = get_input

while  guess != numb && try !=0
	try -= 1
	if guess > numb && try != 1
		puts "Poor show ol chap. Too high. #{try} tries left."
	if guess > numb && try == 1
		puts "Poor show ol chap. Too high. #{try} try left."
	if guess < numb && try != 1
		puts "Poor show ol chap. Too Low. #{try} tries left."
	if guess > numb && try == 1
		puts "Poor show ol chap. Too Low. #{try} try left."
	guess = get_input
end

if guess == numb
	puts "You have won. I am honestly surprised."
end

if try == 0
	puts "Alas, you have lost. Don't look so surprised."
end