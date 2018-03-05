require 'pry'

def dictionary
{
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"four" => '4',
"be" => 'b',
"you" => 'u',
"at" => '@',
"and" => '&'
}
end

def word_substituter(tweet)
  tweet.split.collect { |word| dictionary.keys.include?(word.downcase) ?
    word = dictionary[word.downcase] : word }.join(' ')
      end

def bulk_tweet_shortener(tweets)
  tweets.collect { |tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  elsif tweet.length <= 140
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    shortened_tweet.slice(shortened_tweet.length, -1)
  elsif shortened_tweet <= 140
    tweet
  elsif tweet <= 140
    tweet
  end
end
