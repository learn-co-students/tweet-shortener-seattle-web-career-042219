# Write your code here.

def dictionary
  {
    "hello" => 'hi',
    "to, two, too" => '2',
    "for, four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet) 
  dic = dictionary
  new_tweet = tweet.split()
  dic.each do |key, value|
    key.split(", ").each do |target_word|
      i = 0
      new_tweet.each do |sub_word|
        if target_word == sub_word.downcase
          new_tweet[i] = value
        end
        i += 1
      end
    end  
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
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
  target_tweet = selective_tweet_shortener(tweet)
  if target_tweet.length > 140
    target_tweet[137..target_tweet.length] = "..."
  end
  target_tweet
end

