# frozen_string_literal: true

# TweatsService
class TweatsService
  def search(keyword)
    return [] if keyword.nil? || keyword.empty?
    client.search(keyword).take(20)
  end

  private

  def client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
    end
  end
end
