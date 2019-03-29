# Write your code here.
require 'pry'


def dictionary()
  dict = {"hello" => "hi",
          "Hello" => "Hi",
          "to" => "2",
          "To" => "2",
          "too" => "2",
          "Too" => "2",
          "two" => "2",
          "Two" => "2",
          "for" => "4",
          "For" => "4",
          "four" => "4",
          "Four" => "4",
          "be" => "b",
          "Be" => "B",
          "you" => "u",
          "You" => "U",
          "at" => "@",
          "At" => "@",
          "and" => "&",
          "And" => "&"
        }
end

def word_substituter(tweet)
  hash = dictionary()
  check = tweet.split(/\W+/)
  check.each_with_index do |x, i|
    if hash.include?(x)
      tweet.gsub!(" #{x} ", " #{hash[x]} ")
    end
  end
  return tweet

end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    return tweet
  else
    tweet = selective_tweet_shortener(tweet)
    if tweet.length > 140
      return tweet[0..136] + "..."
    end
  end
end

tww = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"

#binding.pry
