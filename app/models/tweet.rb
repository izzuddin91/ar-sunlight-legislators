require_relative '../../db/config'

class Tweet < ActiveRecord::Base
  belongs_to :congressmen
end