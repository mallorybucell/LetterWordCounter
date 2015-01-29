require 'pry'

#Throw out punctuation (" " "." "," "'", "!", "?",)
#Ignore Case
#Print Output in order of Most Freq to Least Freq
#Works for English only

puts "Please type a string to analyze."
input = gets.chomp

puts "You typed in: #{input}"

input = input.downcase

letters = input.split("")
alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
result = {}

letters.each do |letter|
	# see if the letter is already in result
	# if so increment count
	# if not, add it to the hash and set count to 1

	# VVVV

	# if # letter is in result
	#   # increment count for that letter by 1
	# else
	#   # add to result with count 1
	# end

	# VVVV

	# could use result.has_key? or result.include?
  if alphabet.include?(letter) == false #If 'character is not a letter of the alphabet, move on'
    next
  elsif result[letter]
  # increment count for that letter by 1
  # result[letter] += 1
    old_count = result[letter]
    result[letter] = old_count + 1
  else
  # add to result with count 1
	 result[letter] = 1
	end

end
#sort Hash.result by value
result = result.sort_by {|k,v| v}.reverse.to_h


puts "Result is: #{result}"