require_relative '../config'

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |tweet|
      tweet.string :tweet
      tweet.string :congressman_id
    end
  end
end




      #name, phone, fax, website, webform(for email), party affiliation, gender, birthdate, and twitter_id.