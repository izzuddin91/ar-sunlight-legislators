require_relative '../../app/main.rb'
require_relative '../../lib/sunlight_legislators_importer.rb'

states = ['AL', 'AK', 'AS', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'DC', 'FM', 'FL', 'GA', 'GU', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MH', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'MP', 'OH', 'OK', 'OR', 'PW', 'PA', 'PR', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VI', 'VA', 'WA', 'WV', 'WI', 'WY', 'AE', 'AA', 'AP']

states.each do |x|
  State.create(
      name: x
    )
end

parties = ['R', 'D']

parties.each do |party|
  Party.create(
      party_name: party
    )
end


a = SunlightLegislatorsImporter.import('db/data/legislators.csv')

Congressman.first(5).each do |congressman|
  client.user_timeline(congressman.twitter_id).each do |tweet|
    Tweet.create(
      tweet: tweet.text,
      congressman_id: congressman.id
      )
  end
end

# Congressman.all.each do |congressman|
#   tweets = []
#   client.user_timeline(congressman.twitter_id).each do |tweet|
#     tweets << tweet.text
#   end
# end

#   p tweets

# a.each do |congressman|
#   # if congressman.party == "D"
#   #   congressman.party_id = 2
#   # elsif congressman.party   == "R"
#   #   congressman.party_id = 1
#   # end

#   # states.each_with_index do |state1, index|
#   #   if congressman.state == state1
#   #     congressman.state_id = index + 1
#   #   end
#   # end

#   if congressman.title == "Sen"
#     congressman.type = "Senator"
#   elsif congressman.title == "Rep"
#     congressman.type = "Representative"
#   end

#   congressman.save
# end


