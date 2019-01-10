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
  tweet_array = tweet.split
  tweet_array.each_with_index do |word, index|
    if dictionary.keys.include?(word.lowercase)
      tweet_array[index] = dictionary[word]
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each { |tweet| puts word_substituter(tweet) }
end