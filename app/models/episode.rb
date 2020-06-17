class Episode < ApplicationRecord
    has_many :appearances 
    has_many :guests, through: :appearances

    def episode_appearances
        Appearance.all.map do |appearance| 
        appearance.episode_id = self
        end 
    end

     def episode_guest
        episode_appearances.map do |ea|
        ea.guest = episode_guest
        end
    end

end
