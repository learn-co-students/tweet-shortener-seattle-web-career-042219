def dictionary
  substitutes = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2", 
    "too" => "2", 
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tw_array = tweet.split(" ")

  tw_array.map do |word|
    dictionary.map do |key, value|
      if word == key 
        word.replace(value)
      end 
    end
  end 
  tw_array.join(" ")
end 

def bulk_tweet_shortener(tweetarray)
  tweetarray.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140  
    word_substituter(tweet).chars[0..139]
  else 
    word_substituter(tweet) 
  end 
end 