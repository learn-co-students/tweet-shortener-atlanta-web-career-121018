def dictionary
  {
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
  tweet = tweet.split(" ").map do |word|
    dictionary.each do |dict_word, abbr|
      word = abbr if word.capitalize == dict_word.capitalize
    end
    word
  end
  tweet.join(" ")
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
  tweet = word_substituter(tweet)
  if tweet.length > 140
    last_character = tweet.length
    tweet[137] = "..."
    tweet[(138...last_character)] = ""
  end
  tweet
end
