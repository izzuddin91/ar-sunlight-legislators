require_relative '../config'

class CreateCongressmen < ActiveRecord::Migration

  def change

    create_table :congressmen do |congressman|
      congressman.string :title
      congressman.string :firstname
      congressman.string :middlename
      congressman.string :lastname
      congressman.string :name_suffix
      congressman.string :nickname
      congressman.string :party
      congressman.string :state
      congressman.string :district
      congressman.string :in_office
      congressman.string :gender
      congressman.string :phone
      congressman.string :fax
      congressman.string :website
      congressman.string :webform
      congressman.string :congress_office
      congressman.string :bioguide_id
      congressman.string :votesmart_id
      congressman.string :fec_id
      congressman.string :govtrack_id
      congressman.string :crp_id
      congressman.string :twitter_id
      congressman.string :congresspedia_url
      congressman.string :youtube_url
      congressman.string :facebook_id
      congressman.string :official_rss
      congressman.string :senate_class
      congressman.string :birthdate
      congressman.integer :state_id
      congressman.integer :party_id
    end
  end
end




      #name, phone, fax, website, webform(for email), party affiliation, gender, birthdate, and twitter_id.