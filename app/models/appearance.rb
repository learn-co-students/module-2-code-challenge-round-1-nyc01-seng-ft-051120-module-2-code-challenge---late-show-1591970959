class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, numericality: {:greater_than_or_equal_to => 1, :less_than => 5}
    validate :once_in_a_episode, on: :create
    



    def once_in_a_episode

        Appearance.all.each do |ap|
            if self.episode_id==ap.episode_id && self.guest_id ==ap.guest_id
                errors.add(:guest_id, "Already appeared ont this episode" )
            end
        end
    end
end
