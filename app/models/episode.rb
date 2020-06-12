class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def number_and_date
        "Episode Number #{self.number} on #{self.date}"
    end

    def average_rating
        total_rating = self.appearances.reduce(0) do |sum, appearance|
            sum + appearance.numeric_rating
        end
        total_rating.to_f / self.appearances.count.to_f
    end

end
