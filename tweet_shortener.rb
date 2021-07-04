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

def word_substituter (tweet_string)
  new_short_tweet = []
  indvidual_words = tweet_string.split(' ')
  
  indvidual_words.each do |word|
    case word.downcase
    when "hello"
      new_short_tweet << "hi"
    when "to"
      new_short_tweet << "2"
    when "two"
      new_short_tweet << "2"
    when "too"
      new_short_tweet << "2"
    when "for"
      new_short_tweet << "4"
    when "four"
      new_short_tweet << "4"
    when "be"
      new_short_tweet << "b"
    when "you"
      new_short_tweet << "u"
    when "at"
      new_short_tweet << "@"
    when "and"
      new_short_tweet << "&"
    else
      new_short_tweet << word
    end
  end
  new_short_tweet.join(" ")
end


def bulk_tweet_shortener (array)
  array.each do |tweet|
    tweet = word_substituter(tweet)
    puts "#{tweet}"
  end
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator (tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0...137] + "..."
  else
    tweet
  end
end
    