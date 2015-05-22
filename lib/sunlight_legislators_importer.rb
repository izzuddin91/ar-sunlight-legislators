require 'csv'
require 'byebug'
require_relative "../app/models/state.rb"

class SunlightLegislatorsImporter
  def self.import(filename)
    count = 0
    congressmen_objects = []
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      hash = {}
      row.each do |field, value|
        # TODO: begin
        hash[field] = value
        # TODO: end
      end
      hash[:party] = Party.find_by(party_name: hash[:party])
      hash[:state] = State.find_by(name: hash[:state])
      # hash[:title] == "Sen" ? hash[:type] = "Senator" : hash[:type] = "Representative"
      congressmen_objects << Congressman.create(hash)
      count += 1
      p count if count % 100 == 0
    end
    congressmen_objects
  end
end

# IF YOU WANT TO HAVE THIS FILE RUN ON ITS OWN AND NOT BE IN THE RAKEFILE, UNCOMMENT THE BELOW
# AND RUN THIS FILE FROM THE COMMAND LINE WITH THE PROPER ARGUMENT.
# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end


# require 'csv'
# require 'byebug'


# class SunlightLegislatorsImporter
#   def self.import(filename)
#     @congressmen = []
#     CSV.foreach(filename,{:headers=>:first_row}) do |row|
#       byebug
#       @congressmen << Congressman.new(row)
#         # TODO: end
#     end
#     @congressmen

#   end
# end