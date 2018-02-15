class HomesController < ApplicationController

  def index
  end

  def tweet
  	text = params.permit(:tweet)
  	tweet = SendTweet.new(text['tweet'])
  end

end
