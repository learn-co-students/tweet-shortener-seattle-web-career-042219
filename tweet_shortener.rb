
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

