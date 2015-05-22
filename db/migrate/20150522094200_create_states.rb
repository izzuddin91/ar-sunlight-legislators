require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateStates < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
  # db:create
    create_table :states do |state|
      state.string :name
    end
  end
end

