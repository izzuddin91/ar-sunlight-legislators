require_relative '../../db/config'


class Representative < Congressman
  belongs_to :party
  belongs_to :state
end
