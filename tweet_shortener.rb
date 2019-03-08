# Write your code here.
require 'pry'

def dictionary
{"hello" => "hi",
"Hello" => "Hi",
"to" => "2",
"two" => "2",
"too"=> "2",
"To" => "2",
"Two" => "2",
"Too"=> "2",
"for" => "4",
"four" => "4",
"For" => "4",
"Four" => "4",
"be" => "b",
"you" => 'u',
"at" => "@",
"and" => "&",
"Be" => "B",
"You" => 'U',
"At" => "@",
"And" => "&"
}
end

def word_substituter(tweets_string)
  tweets_array = tweets_string.split()
  dictionary_keys = dictionary.keys

  tweets_array.map do |word|
    if dictionary_keys.include?(word)
      word = dictionary[word]
    end
    word
  end.join(" ")

end

def bulk_tweet_shortener(tweets_array)
  i = 0
  while i < tweets_array.length do
    puts word_substituter(tweets_array[i])
    #binding.pry
    i+=1
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)
 #binding.pry
  if tweet.length > 140
    tweet = "#{tweet[0..136]}..."
    #binding.pry
  else
  tweet
end
end
