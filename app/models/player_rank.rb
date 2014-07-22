class PlayerRank < ActiveRecord::Base
  belongs_to :player
  has_one :team, through: :player
  has_one :position, through: :player
end
