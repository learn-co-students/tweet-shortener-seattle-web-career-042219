# Write your code here.
def dictionary
dictionary = {
	"hello" => 'hi',
	"to" => '2',
	"two" => '2',
	"too" => '2',
	"for" => '4',
	"four" => '4',
	'be' => 'b',
	'you' => 'u',
	"at" => "@",
	"and" => "&"
}
end

def word_substituter(message)
	message_array = []
	message.split.collect do |word|
		if dictionary.keys.include?(word.downcase)
			message_array << dictionary[word.downcase]
		else
			message_array << word
		end
	end
	message_array.join(" ")
end

def bulk_tweet_shortener(message_array)
	message_array.each do |message|
		puts word_substituter(message)
	end
end

def selective_tweet_shortener(message)
	if message.length > 140
		word_substituter(message)
	else
		message
	end
end

def shortened_tweet_truncator(message)
	if word_substituter(message).length > 140
		word_substituter(message)[0..139]
	else
		message
	end
end




