class SendTweet

def initialize(tweet)
	perform(tweet)
end

def perform(tweet)
	send_tweet(tweet)
end

def log_in_to_twitter
	Twitter::REST::Client.new do |config|
	  config.consumer_key        = ENV['TWITTER_API_KEY']
	  config.consumer_secret     = ENV['TWITTER_API_SECRET']
	  config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
	  config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
	end
end

def send_tweet(tweet)
	client = log_in_to_twitter
	client.update(tweet)
end

end
