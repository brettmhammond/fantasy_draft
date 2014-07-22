class Team < ActiveRecord::Base
    belongs_to :league
    has_many :players
    has_many :schedules
    has_many :byes

    def full_name
        "#{city} #{name}"
    end
end