# Write your code here.
def dictionary
  conversions = {}
  words_to_be_converted = ["hello", "to", "two", "too", "for", "four", "be", "you", "at", "and"]

  words_to_be_converted.each do |word|
    case word
    when "hello"
      conversions[word] = "hi"
    when "to", "two", "too"
      conversions[word] = "2"
    when "for", "four"
      conversions[word] = "4"
    when "be"
      conversions[word] = "b"
    when "you"
      conversions[word] = "u"
    when "at"
      conversions[word] = "@"
    when "and"
      conversions[word] = "&"
    end
  end
  return conversions
end

def word_substituter(tweet)
  tweet.split.collect{|word|
    if dictionary.key?(word.downcase)
      word = dictionary[word.downcase]
    else
      word = word
    end
  }.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts tweet.split.collect{|word|
      if dictionary.key?(word.downcase)
        word = dictionary[word.downcase]
      else
        word = word
      end
    }.join(" ")
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return tweet.split.collect{|word|
      if dictionary.key?(word.downcase)
        word = dictionary[word.downcase]
      else
        word = word
      end
    }.join(" ")
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return tweet.split.collect{|word|
      if dictionary.key?(word.downcase)
        word = dictionary[word.downcase]
      else
        word = word
      end
    }.join(" ")[0..136] + "..."
  else
    return tweet
  end
end
