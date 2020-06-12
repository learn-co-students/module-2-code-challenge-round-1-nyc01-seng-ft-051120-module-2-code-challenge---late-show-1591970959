class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        total_ratings = 0
        self.appearances.each do |appearance|
            if appearance.rating != nil
            total_ratings += appearance.rating
            else
                "This episode has no ratings."
            end
        end
        average_rating = total_ratings/self.appearances.count
        average_rating
    end

end
