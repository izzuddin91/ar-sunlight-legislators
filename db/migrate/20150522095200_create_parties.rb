require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateParties < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
  # db:create
    create_table :parties do |party|
      party.string :party_name
    end
  end
end


