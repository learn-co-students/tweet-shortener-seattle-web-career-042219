# Write your code here.
def dictionary
  dict = {hello: "hi",
  to: "2", two: "2", too: "2",
  :for => "4", four: "4",
  be: "b",
  you: "u",
  at: "@",
  :and => "&"}
end

def word_substituter(tweet)
  tweet = tweet.split
  tweet.each_with_index { |word, index|
    if dictionary.keys.include?(word.downcase.to_sym)
      tweet[index] = dictionary[word.downcase.to_sym]
    end
  }
  tweet.join(" ")
end



def bulk_tweet_shortener(tweets)
  for tweet in tweets
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    string = word_substituter(tweet)
    if string.size > 140
      string = string[0..136] + "..."
    end
  else
    tweet
  end
end





  