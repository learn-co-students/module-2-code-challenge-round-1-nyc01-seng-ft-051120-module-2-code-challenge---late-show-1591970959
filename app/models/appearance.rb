class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :numeric_rating, numericality: { greater_than_or_equal_to: 1 }
    validates :numeric_rating, numericality: { less_than_or_equal_to: 5 }
    # validate :guest_one_appearance_per_ep

    # private

    # def guest_one_appearance_per_ep
    #     byebug
    #     if self.episode.guests != self.episode.guests.uniq
    #         self.errors.add = "This Guest has already been booked for this Episode"
    #     end
    # end
end
