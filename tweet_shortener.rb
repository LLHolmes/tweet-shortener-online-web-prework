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
    dictionary.each do |original, change|
      if original == word
        tweet_array[index] = change
      end
    end
  end
  tweet_array.join(" ")
end