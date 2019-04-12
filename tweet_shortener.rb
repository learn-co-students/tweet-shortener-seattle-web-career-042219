
def dictionary
  subs = {
  "hello" => "hi",
  "to" => "2",
  "two" =>"2",
  "too" => "2",
  "for" => "4",
   "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@" ,
  "and" => "&"
  }
end


def word_substituter(tweet)
  keys = dictionary.keys
  tweet_array = tweet.split

  tweet_array.map! do |word|

    if keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
    word
    end
  end
tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets)

  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
  end
end

def shortened_tweet_truncator(tweets)
  if tweets.length > 140
    sub_tweet = word_substituter(tweets)
      if (sub_tweet.size >140)
        sub_tweet[0..136] + "..."
      else
        sub_tweet
      end
  else
    tweets
  end
end
