require_relative '../../db/config'


class Senator < Congressman
  belongs_to :party
  belongs_to :state
end
