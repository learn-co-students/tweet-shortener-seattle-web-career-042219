def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(tweet)
  dictionary
  tweet_array = tweet.split(" ")
  short_tweet = []
  tweet_array.each do |word|
    dictionary.each do |long_word, short_word|
      if word.downcase == long_word
        word = short_word
      end
    end
    short_tweet.push(word)
  end
  return short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    short_tweet = word_substituter(tweet)
    puts short_tweet
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length > 140
    truncated_tweet = short_tweet.slice(0...137)
    truncated_tweet << "..."
    return truncated_tweet
  else
    return tweet
  end
end
