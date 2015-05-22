require_relative 'models/congressman.rb'
require_relative 'models/representative.rb'
require_relative 'models/senator.rb'
require_relative 'models/state.rb'
require_relative 'models/party.rb'
require_relative 'models/tweet.rb'
require 'twitter'
require 'byebug'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "FygJYxy7jRjZYvuo0jB5BbodY"
  config.consumer_secret     = "qnb0oPD1Kssj1AJv0rbEao6HNVb2CjMoNhOggNoIQ9VrKac1x7"
  config.access_token        = "2755065638-y4oXOGXXNifawjEbkbjHNV1xQquhzJ60rQACawr"
  config.access_token_secret = "OnLcJExeEbkJZOeAz99RByqyIYwDaiMYwAt2s9d6fdggJ"
end

# # 1, Congressman by state
# puts "Senators:"
# Congressman.where(state: 'AL').find_each do |congressman|
#   if congressman.title == "Sen"
#     p congressman.title + " " + congressman.firstname + " " + congressman.lastname + "(" + congressman.party + ")"
#   end
# end


# puts "Representatives:"
# Congressman.where(state: 'AL').find_each do |congressman|
#   if congressman.title == "Rep"
#     p congressman.title + " " + congressman.firstname + " " + congressman.lastname + "(" + congressman.party + ")"
#   end
# end

# # 2, IN OFFICE, MALE ONLY, AND MALE VS TOTAL CONGRESSMAN %
# puts "-----------------------"
# puts "-----------------------"
# puts "-----------------------"
# puts "Gender Ratio"
# male_senators = []
# male_reps = []
# Congressman.where(gender: 'M').find_each do |congressman|
#   if congressman.in_office == "1"
#     if congressman.title == "Sen"
#       male_senators << congressman
#     elsif congressman.title == "Rep"
#       male_reps << congressman
#     end
#   end
# end

# p "Male Senators: " + male_senators.length.to_s + " " + ((male_senators.length * 100/Congressman.where(title: "Sen").count)).to_s + "%"
# p "Male Representatives: " + male_reps.length.to_s + " " + ((male_reps.length * 100/Congressman.where(title: "Rep").count)).to_s + "%"



# #3 Print out the list of states along with how many active senators and representatives are in each, in descending order (i.e., print out states with the most congresspeople first).


# b= State.all.map{|s| [s.name, s.congressmen.count, s.congressmen.where(title: "Sen").count, s.congressmen.where(title: "Rep").count] }.sort{|x,y| y[1] <=> x[1]}

# b.each do |state, total_congressmen, senator_count, rep_count|
#   puts state + ": " + "#{senator_count.to_s}" + " Senators, " + "#{rep_count.to_s} " + "Representative(s)."
# end

# #4 For Senators and Representatives, count the total number of each (regardless of whether or not they are actively in office).
# senators = []
# representatives = []
# Congressman.all.each do |congressman|
#   if congressman.title == "Sen"
#     senators << congressman
#   elsif congressman.title == "Rep"
#     representatives << congressman
#   end
# end

# puts "Senators: " + "#{senators.length}"
# puts "Representatives: " + "#{representatives.length}"

# #5 Now use ActiveRecord to delete from your database any congresspeople who are not actively in office, then re-run your count to make sure that those rows were deleted
# Congressman.where(in_office: 0).destroy_all
# senators = []
# representatives = []
# Congressman.all.each do |congressman|
#   if congressman.title == "Sen"
#     senators << congressman
#   elsif congressman.title == "Rep"
#     representatives << congressman
#   end
# end

# puts "Senators: " + "#{senators.length}"
# puts "Representatives: " + "#{representatives.length}"


















