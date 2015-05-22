require_relative '../../app/models/state.rb'
require_relative '../../app/models/congressman.rb'
require_relative '../../app/models/party.rb'
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


a = SunlightLegislatorsImporter.import('../data/legislators.csv')

a.each do |congressman|
  if congressman.party == "D"
    congressman.party_id = 2
  elsif congressman.party   == "R"
    congressman.party_id = 1
  end

  states.each_with_index do |state1, index|
    if congressman.state == state1
      congressman.state_id = index + 1
    end
  end
  congressman.save
end
