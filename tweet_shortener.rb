require 'pry'



def word_substituter(tweet)
  dictionary =
  {
  "hello" => 'hi',
  "to" =>' 2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" => 'b',
  "you" => 'u',
  "at" => '@',
  "and" => '&'
  }

tweet.split.collect { |word| dictionary.keys.include?(word.downcase) ? 
    word = dictionary[word.downcase] : word }
      end


# tweet_array = tweet.split
# tweet_array.each do |i|
#     if dictionary.keys.include?(i)
#     dictionary.each do |key, value|
#       if i == key
#
#       end
#     end
#   end
#
# end
