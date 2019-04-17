def dictionary
  dictionary = {"hello"=>'hi',
  "to" => '2',
  "two"=> '2',
  "too" => '2',
  "for" => '4',
  "For" => '4',
  "Four" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@" ,
  "and" => "&"}
 end

 def word_substituter(tweet)
   dic = dictionary
   tweetArray = tweet.split
   editedTweet = []
   tweetArray.each do |word|
     if dic.has_key?(word)== true
       editedTweet << dic[word]
     else
     editedTweet<< word
     end
   end
   editedTweet.join(" ")
 end

 def bulk_tweet_shortener(array_of_tweets)
   array_of_tweets.map do |tweet|
     puts word_substituter(tweet)
   end
 end

 def selective_tweet_shortener(tweet)
   if tweet.length>140
     word_substituter(tweet)
   else
     tweet
   end
 end

 def shortened_tweet_truncator (tweet)
  if word_substituter(tweet).length> 140
    "#{tweet[0..136]}..."
  else
    word_substituter(tweet)
  end
end
