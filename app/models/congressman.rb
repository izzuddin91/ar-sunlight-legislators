require_relative '../../db/config'


class Congressman < ActiveRecord::Base
  belongs_to :party
  belongs_to :state
end
