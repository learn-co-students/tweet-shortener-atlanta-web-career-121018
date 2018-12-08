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
  tweet_words = tweet.split(" ")
  i = 0

  while i < tweet_words.length
    dictionary.each do |word, substitute|
      if tweet_words[i].downcase == word
        tweet_words[i] = substitute
      end
    end
    i +=1
  end
  return tweet_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  word_substituter(tweet).length > 140 ? "#{word_substituter(tweet)[0...137]}..." : tweet
end







#this doesn't work- maybe fix later?

# def word_substituter(tweet)
#   tweet_words = tweet.split(" ")
#
#   new_tweet = []
#
#   tweet_words.each do |word|
#     if dictionary.keys.include?(word)
#       dictionary.each do |key, value|
#         new_tweet << dictionary[key][value]
#       end
#     else
#       new_tweet << word
#     end
#   end
#   new_tweet.join(" ")
# end
