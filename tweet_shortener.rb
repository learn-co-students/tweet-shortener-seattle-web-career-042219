
def dictionary()
  d = {
        "hello" => "hi",
        "to"=>"2",
        "too"=> "2",
        "two" => "2",
        "for"=> "4",
        "four"=> "4",
        "be" => "b",
        "you" => "u",
        "at" => "@", 
        "and" => "&"
      }
  return d
end

def word_substituter(s)
  d = dictionary()
  r = s.split(" ")
  (0...r.length).each do |i|
    s = r[i].downcase
    if d.has_key?(s)
      r[i] = d[s]
    end
  end
  return r.join(" ")
end

def bulk_tweet_shortener(a)
  a.each do |s|
    puts word_substituter(s)
  end
end

def selective_tweet_shortener(s)
  if s.length > 140
    return word_substituter(s)
  else
    return s
  end
end

def shortened_tweet_truncator(s)
  s = word_substituter(s)
  if s.length > 140
    return s[0...140]
  else
    return s
  end
end