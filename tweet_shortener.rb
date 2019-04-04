require 'pry'

def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
end

def word_substituter(tweet)
  tweet_arr = tweet.split(' ')
  dictionary.keys.each do |dictionary_key|
    tweet_arr.map! do |tweet_word|
      if tweet_word == dictionary_key
        dictionary[dictionary_key]
      else
        tweet_word
      end
    end
  end
  tweet_arr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
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
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    new_tweet = shortened_tweet[0..136]
    new_tweet << "..."
  else
    shortened_tweet
  end
end
