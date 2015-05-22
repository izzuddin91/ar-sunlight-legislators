require_relative '../../db/config'

class State < ActiveRecord::Base
  has_many :congressmen
end
