class Player < ActiveRecord::Base
  belongs_to :league
  belongs_to :team
  belongs_to :position
  has_one :player_auction_value
  has_one :player_projection

    def age
      (Time.now.to_s(:number).to_i - date_of_birth.to_time.to_s(:number).to_i)/10e9.to_i
    end

end
