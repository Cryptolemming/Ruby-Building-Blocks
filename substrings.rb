def substrings(input, dictionary)

puts "Enter a word or sentence, punctuation is fine, do your worst! "

substrings_count = {}
count = 0

$input = gets.chomp.downcase
input_array = $input.scan(/\w+/)

dictionary_creation = "okay,it,go,is,the,hello,hi,yabadabadoo,what,when,if,we,are,dont,can,like,own,for,end,i,a"
$dictionary = dictionary_creation.split(",")

$dictionary.each do |substring|
    input_array.each do |word|
		count += 1 if (word.include? substring)
	end
	substrings_count[substring] = count if count >= 1
	count = 0
end

return substrings_count 

end

substrings($input, $dictionary)