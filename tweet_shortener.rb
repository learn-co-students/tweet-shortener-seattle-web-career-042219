

# Write your code here.
def dictionary
  words = {
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

def word_substituter(tweet)
  word_s = tweet.split(" ")#the tweet seperated into words
  ks = dictionary.keys #the keys of the dictionary hash
  vs = dictionary.values #the values of the dictionary hash

  word_s.map do |word|
    if ks.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end

  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  i = 0
  while i < tweets.size
    puts "#{word_substituter(tweets[i])}"
  i+=1
  end
end

def selective_tweet_shortener(tweets)
    if tweets.length >= 140
      word_substituter(tweets[0...140])
    else
     tweets
   end
end

def shortened_tweet_truncator(tweets)

  if word_substituter(tweets).length > 140
    word_substituter(tweets[0..145])+ "..."
  else
   word_substituter(tweets)
 end
end
